#!/usr/bin/env sh


_abspath="$(dirname "$(readlink -f "$0")")"


__doLint ()
{
    _verbose="$1"

    _ret=0
    while read -r _relpath ; do
        if [ "$_verbose" = "verbose" ] ; then
            printf %s "Linting $_relpath: "
        fi

        if ! [ -r "$_relpath" ] ; then
            if [ "$_verbose" = "verbose" ] ; then
                printf %s\\n "File not found"
            fi
            _ret=66
        fi

        _format=${_verbose:+tty} _format=${_format:-quiet}
        if {
            shellcheck -a \
                       -x \
                       -P "$_abspath/sh/include" \
                       -f"$_format" \
                       -Sstyle \
                       "$_relpath"
        } ; then
            if [ "$_verbose" = "verbose" ] ; then
                printf %s\\n "OK"
            fi
        else
            [ $_ret -lt 65 ] && _ret=65
        fi
    done

    return "$_ret"
}

__doSymlink ()
{
    _verbose="$1"
    _subdir="$2"

    while read -r _relpath ; do
        _target="$_abspath/$_relpath"
        _destination="$HOME${_subdir:+"/$_subdir"}"
        _linkName="$_destination/$(basename "$_relpath")"

        if [ "$_verbose" = "verbose" ] ; then
            printf %s\\n "Creating symlink for $_linkName"
        fi
        [ -d "$_destination" ] || mkdir -p "$_destination"
        ln -sf "$_target" "$_destination"
    done
}


__lint ()
{
    __doLint "$1" <<-EOF
		sh/.sh/alias/alias.sh
		sh/.sh/env/app-config.sh
		sh/.sh/env/custom.sh
		sh/.sh/env/editor.sh
		sh/.sh/env/locale.sh
		sh/.sh/env/path.sh
		sh/.sh/init/dircolors.sh
		sh/.sh/init/ssh-agent.sh
		sh/.sh/lib/archive-extractor.sh
		sh/.sh/rc.sh
EOF

    return $?
}


__symlink ()
{
    __doSymlink "$1" <<-EOF
		git/.gitconfig
		git/.gitconfig.d
		misc/.tmux.conf
		misc/.Xresources
		python/.pythonrc
		sh/.bashrc
		sh/.bash_profile
		sh/.sh
		sh/.zshenv
EOF

    __doSymlink "$1" ".zsh" <<-EOF
		sh/.zpreztorc
		sh/.zshrc
EOF
}


__installPythonPackages () {
    pip3 install -r python/pip3-requirements-system-wide.txt
    pip2 install -r python/pip2-requirements-system-wide.txt
}


# ---------------------------------- options ----------------------------------

__usage ()
{
    printf %s\\n\\n "$1 [-l] [-p] [-v]"
    printf %s\\n "-l lint only, do not install (negates -p)"
    printf %s\\n "-p install Python packages as per latest requirements file"
    printf %s\\n "-v verbose"
}


_optInstallPythonPackages=
_optLint=
_optVerbose=

while getopts ":hlpv" _opt ; do
    case "$_opt" in
        l) _optLint=true                    ;;
        p) _optInstallPythonPackages=true   ;;
        v) _optVerbose=verbose              ;;
        h) __usage "$0" ; exit 0              ;;
        *) __usage "$0" ; exit 1              ;;
    esac
done
shift "$((OPTIND-1))"


# ---------------------------------- install ----------------------------------

if ! __lint "$_optVerbose" ; then
    exit 65
fi

[ "$_optLint" = true ] && exit 0

__symlink "$_optVerbose"

[ "$_optInstallPythonPackages" = true ] && __installPythonPackages

exit 0
