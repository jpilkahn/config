#!/usr/bin/env sh

__pop() {
    echo "$1" | rev | cut -d "$2" -f1 | rev
}
alias pop="__pop"

__pop_front() {
    echo "$1" | cut -d "$2" -f1
}
alias pop_front="__pop_front"
