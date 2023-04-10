#!/usr/bin/env sh

__export_esp ()
{
    RUSTUP_ESP_TOOLCHAINS="$HOME/.rustup/toolchains/esp" ; export RUSTUP_ESP_TOOLCHAINS

    LIBCLANG_PATH="$RUSTUP_ESP_TOOLCHAINS/xtensa-esp32-elf-clang/esp-15.0.0-20221201/esp-clang/lib" ; export LIBCLANG_PATH

    PATH="$PATH:$RUSTUP_ESP_TOOLCHAINS/riscv32-esp-elf/esp-2021r2-patch5-8_4_0/riscv32-esp-elf/bin" ; export PATH
    PATH="$PATH:$RUSTUP_ESP_TOOLCHAINS/xtensa-esp32-elf/esp-2021r2-patch5-8_4_0/xtensa-esp32-elf/bin" ; export PATH
    PATH="$PATH:$RUSTUP_ESP_TOOLCHAINS/xtensa-esp32s2-elf/esp-2021r2-patch5-8_4_0/xtensa-esp32s2-elf/bin" ; export PATH
    PATH="$PATH:$RUSTUP_ESP_TOOLCHAINS/xtensa-esp32s3-elf/esp-2021r2-patch5-8_4_0/xtensa-esp32s3-elf/bin" ; export PATH
}

alias expesp="__export_esp"
