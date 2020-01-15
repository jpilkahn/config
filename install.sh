#!/usr/bin/env sh


_abspath="$(dirname "$(readlink -f "$0")")"

_destination="$HOME"

_configRelpaths=$(cat <<-EOF
	.pythonrc
	.all_shells_common_profile
	.bashrc
	git/.gitconfig
	git/.gitconfig.d
	.tmux.conf
	.Xresources
	.zpreztorc
	.zshrc
EOF
)


__symlinkConfig () {
    for _relpath in $_configRelpaths ; do
        _target="$_abspath/$_relpath"
        _linkName="$_destination/$(basename "$_relpath")"

        ln -sf "$_target" "$_destination"

        if [ verbose = "$1" ] ; then
            printf %s\\n "Created symlink $_linkName"
        fi
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

__symlinkConfig "$_optVerbose"

[ true = "$_optInstallPythonPackages" ] && __installPythonPackages
