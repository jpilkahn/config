#!/usr/bin/env sh

# PATH to executables
#
# @see [POSIX Spec, 4.13 Pathname Resolution]\
#      (https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap04.html#tag_04_13)

# local, short-lived binaries
_homeBinDir="$HOME/bin"

PATH="$PATH:$_homeBinDir" ; export PATH
