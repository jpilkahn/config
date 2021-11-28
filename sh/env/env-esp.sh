#!/usr/bin/env sh

# espressif (esp32) sdk
IDF_PATH="/opt/esp-idf" ; export IDF_PATH
IDF_TOOLS_PATH="$HOME/.espressif" ; export IDF_TOOLS_PATH

# shellcheck source=/opt/esp-idf/export.sh
. "$IDF_PATH/export.sh"
