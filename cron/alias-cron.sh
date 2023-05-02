#!/usr/bin/env sh

if
    command -v fcrontab >/dev/null 2>&1
then
    alias crontab="fcrontab"
fi

alias ctab="crontab"
