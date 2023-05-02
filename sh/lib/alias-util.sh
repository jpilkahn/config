#!/usr/bin/env sh

__fn_alias() {
    _alias="$1"
    _fn="__$_alias"

    # false positive: meant to expand when defined, rather than called
    # shellcheck disable=SC2139
    alias "$_alias"="$_fn"
}
