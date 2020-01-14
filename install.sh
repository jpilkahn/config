#!/usr/bin/env sh


_abspath="$(dirname "$(readlink -f "$0")")"

_destination="$HOME"

_files=$(cat <<-EOF
	.pythonrc
	.all_shells_common_profile
	.bashrc
	.gitconfig
	.gitconfig-alias
	.gitconfig-base
	.gitconfig-color
	.gitconfig-golang
	.gitignore-global
	.tmux.conf
	.Xresources
	.zpreztorc
	.zshrc
EOF
)


__symlinkFiles () {
    for _file in $_files ; do
        _target="$_abspath/$_file"
        if [ verbose = "$1" ] ; then
            printf %s\\n "Symlinking $_target to $_destination/$_file"
        fi
        ln -sf "$_target" "$_destination"
    done
}


__installPythonPackages () {
    pip3 install -r python/pip3-requirements-system-wide.txt
    pip2 install -r python/pip2-requirements-system-wide.txt
}


# ---------------------------------- options ----------------------------------

_optInstallPythonPackages=
_optVerbose=
while getopts ":pv" _opt; do
    case "$_opt" in
        p) _optInstallPythonPackages=true   ;;
        v) _optVerbose=verbose              ;;
        *) echo "$0 [-p] [-v]" >&2 ; exit 1 ;;
    esac
done
shift "$((OPTIND-1))"


# ---------------------------------- install ----------------------------------

mkdir -p "$_destination"

__symlinkFiles "$_optVerbose"

[ true = "$_optInstallPythonPackages" ] && __installPythonPackages
