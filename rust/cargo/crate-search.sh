#!/usr/bin/env sh

__crate_search() {
    PATTERN="${*}"
    if [ "${PATTERN}" ]; then
        cargo-crate search \
            --raw -l 100 \
            "${PATTERN}" |
            fzf -m -i --preview 'cargo-crate info {}' --query "${PATTERN}"
    else
        echo You must provide a starting search pattern
        exit 1
    fi
}
