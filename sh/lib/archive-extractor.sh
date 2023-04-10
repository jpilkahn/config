#!/usr/bin/env sh

# archive-extractor.sh
# ====================
#
# Utility function to extract compressed archives.

# @param  $1 archive-type file to be extracted
# @tparam $1 path
__archive_extractor ()
{
    __usage ()
    {
        printf %s\\n "$1 FILE..."
        printf %s\\n\\n "$1 -h"
        printf %s\\n "(.7z|.bz2|.gz|.rar|.tar|.tar.bz2|.tbz2|.tar.gz|.tar|.xzf|.tgz|.zip|.Z)"
    }

    # @param $1 (str) taget file
    # @param $2 (str) script name as invoked
    __unknownExtension ()
    {
        __usage "$2"
        printf %s\\n "'$1' is not a file format known to $2"
        exit 64
    }

    if [ -r "$1" ] ; then
        case "$1" in
            *.tar)       tar xf "$1"                  ;;
            *.tar.bz2)   tar xjf "$1"                 ;;
            *.tbz2)      tar xjf "$1"                 ;;
            *.tar.gz)    tar xzf "$1"                 ;;
            *.tgz)       tar xzf "$1"                 ;;
            *.7z)        7z x "$1"                    ;;
            *.bz2)       bunzip2 "$1"                 ;;
            *.gz)        gunzip "$1"                  ;;
            *.rar)       unrar x "$1"                 ;;
            *.zip)       unzip "$1"                   ;;
            *.Z)         uncompress "$1"              ;;
            -h)          __usage "$0" ; exit 0        ;;
            *)           __unknownExtension "$1" "$0" ;;
        esac
    else
        echo "'$1' cannot be read"
    fi
}

alias ex=__archive_extractor
