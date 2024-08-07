#!/usr/bin/env sh

_abspath="$(dirname "$(readlink -f "$0")")"

__doLint() {
    _verbose="$1"

    _ret=0
    while read -r _relpath; do
        if [ "$_verbose" = "verbose" ]; then
            printf %s "Linting $_relpath: "
        fi

        if ! [ -r "$_relpath" ]; then
            if [ "$_verbose" = "verbose" ]; then
                printf %s\\n "File not found"
            fi
            _ret=66
        fi

        _format=${_verbose:+tty}
        _format=${_format:-quiet}

        if {
            shellcheck -a \
                       -x \
                       -P "$_abspath" \
                       -f"$_format" \
                       -Sstyle \
                       "$_relpath"
        }; then
            if [ "$_verbose" = "verbose" ]; then
                printf %s\\n "OK"
            fi
        else
            [ $_ret -lt 65 ] && _ret=65
        fi
    done

    return "$_ret"
}

__doSymlink() {
    _verbose="$1"
    _subdir="$2"

    while read -r _relpath; do
        _target="$_abspath/$_relpath"
        _destination="$HOME${_subdir:+"/$_subdir"}"
        _linkName="$_destination/$(basename "$_relpath")"

        [ -d "$_destination" ] || (
            if [ "$_verbose" = "verbose" ]; then
                printf %s\\n "Creating folder $_destination"
            fi
            mkdir -p "$_destination"
        )

        if [ "$_verbose" = "verbose" ]; then
            printf %s\\n "Creating symlink for $_linkName"
        fi
        ln -sf "$_target" "$_destination"
    done
}

__lint() {
    __doLint "$1" <<-EOF
        cron/alias-cron.sh
        diff/alias-diff.sh
        esp-idf/alias-esp.sh
        esp-idf/env-esp.sh
        git/alias-git.sh
        grep/alias-grep.sh
        k8/alias-k8.sh
        pacman/alias-pacman.sh
        rg/alias-rg.sh
        rust/cargo/alias-cargo.sh
        rust/cargo/env-cargo.sh
        rust/env-rust.sh
        sh/alias/alias.sh
        sh/alias/alias-coreutils.sh
        sh/alias/alias-sys-utils.sh
        sh/env/env-deno.sh
        sh/env/env-editor.sh
        sh/env/env-locale.sh
        sh/env/env-path.sh
        sh/env/env-perl.sh
        sh/env/env-shell.sh
        sh/init/dircolors.sh
        sh/init/ssh-agent.sh
        sh/lib/alias-util.sh
        sh/lib/conditional-exec.sh
        sh/lib/export-esp.sh
        sh/lib/shell-util.sh
        sh/lib/string-util.sh
        sh/injected.sh
        sh/rc.sh
        svn/alias-svn.sh
        vscode/alias-vscode.sh
        yarn/alias-yarn.sh
        zellij/alias-zellij.sh
EOF

    return $?
}

__symlink() {
    __doSymlink "$1" <<-EOF
        git/.gitconfig
        git/.gitconfig.d
        python/.pythonrc
        rg/.ripgreprc
        tmux/.tmux.conf
        x11/.Xresources
        sh/.bashrc
        sh/.bash_profile
        sh/.zshenv
EOF

    __doSymlink "$1" ".sh" <<-EOF
        sh/init
        sh/lib
        sh/injected.sh
        sh/rc.sh
EOF

    __doSymlink "$1" ".sh/alias" <<-EOF
        cron/alias-cron.sh
        diff/alias-diff.sh
        esp-idf/alias-esp.sh
        git/alias-git.sh
        grep/alias-grep.sh
        k8/alias-k8.sh
        pacman/alias-pacman.sh
        rg/alias-rg.sh
        rust/cargo/alias-cargo.sh
        sh/alias/alias.sh
        sh/alias/alias-coreutils.sh
        sh/alias/alias-sys-utils.sh
        svn/alias-svn.sh
        vscode/alias-vscode.sh
        yarn/alias-yarn.sh
        zellij/alias-zellij.sh
EOF

    __doSymlink "$1" ".sh/env" <<-EOF
        esp-idf/env-esp.sh
        rg/env-rg.sh
        rust/cargo/env-cargo.sh
        rust/env-rust.sh
        sh/env/env.sh
        sh/env/env-deno.sh
        sh/env/env-editor.sh
        sh/env/env-locale.sh
        sh/env/env-path.sh
        sh/env/env-perl.sh
        sh/env/env-rust.sh
        sh/env/env-shell.sh
EOF

    __doSymlink "$1" ".zsh" <<-EOF
        sh/.zpreztorc
        sh/.zshrc
EOF

    __doSymlink "$1" ".config" <<-EOF
        bacon
        joshuto
        neofetch
        nushell
        xdg/mimeapps.list
        zellij
EOF

    # needs root privileges...
    #     __doSymlink "$1" "/etc" <<-EOF
    #         etc/pug
    # EOF
}

__installPythonPackages()  {
    pip3 install -r python/pip3-requirements-system-wide.txt
    pip2 install -r python/pip2-requirements-system-wide.txt
}

# ---------------------------------- options ----------------------------------

__usage() {
    printf %s\\n\\n "$1 [-l] [-p] [-v]"
    printf %s\\n "-l lint only, do not install (negates -p)"
    printf %s\\n "-p install Python packages as per latest requirements file"
    printf %s\\n "-v verbose"
}

_optInstallPythonPackages=
_optLint=
_optVerbose=

while getopts ":hlpv" _opt; do
    case "$_opt" in
        l) _optLint=true                  ;;
        p) _optInstallPythonPackages=true ;;
        v) _optVerbose=verbose            ;;
        h)
            __usage "$0"
            exit 0
            ;;
        *)
            __usage "$0"
            exit 1
            ;;
    esac
done
shift "$((OPTIND - 1))"

# ---------------------------------- install ----------------------------------

if ! __lint "$_optVerbose"; then
    exit 65
fi

[ "$_optLint" = true ] && exit 0

__symlink "$_optVerbose"

[ "$_optInstallPythonPackages" = true ] && __installPythonPackages

exit 0
