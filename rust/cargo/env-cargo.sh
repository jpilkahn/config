#!/usr/bin/env sh

RUST_LOG_LEVEL=INFO
export RUST_LOG_LEVEL

RUST_LOG_MODULE_LEVELS=cargo=ERROR,hyper=WARN,h2=ERROR,sqlx=WARN,tower=WARN,tower_http=WARN
export RUST_LOG_MODULE_LEVELS

RUST_LOG="$RUST_LOG_LEVEL,$RUST_LOG_MODULE_LEVELS"
export RUST_LOG

TEST_LOG=1
export TEST_LOG
