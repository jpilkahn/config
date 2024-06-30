#!/usr/bin/env sh

# Acknowledgements:
# [Tom Hale, 2016](https://gist.github.com/HaleTom/61e2c94dc4d76b58c9f38fc8b6cec3ae)

__quote() {
    printf %s "$1" | sed -r 's/(["\\])/\\\1/g'
}

IFS=$(printf '\n')
printf '\n!"'
read -r _previous

while read -r _line; do
    __quote "${_previous}"
    printf ' \\n\\\n'
    _previous="${_line}"
done

quote "${_previous}"
printf " #\"\n"

unset \
    _line \
    _previous
