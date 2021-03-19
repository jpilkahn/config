#!/usr/bin/env sh

# path.sh
# =======
#
# PATH to executables.
#
# @see [POSIX Spec, 4.13 Pathname Resolution]\
#      (https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap04.html#tag_04_13)

# local, short-lived binaries
_localBinDir="$HOME/bin"

# espressif (esp32) sdk
IDF_PATH="/opt/esp-idf" ; export IDF_PATH

PATH="$PATH:$_localBinDir:$IDF_PATH/tools" ; export PATH
