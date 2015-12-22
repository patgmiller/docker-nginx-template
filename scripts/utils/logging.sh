#!/bin/bash

### Helper subroutines to help with "logging".

info () {
    printf "\r\033[2K  [ \033[00;34m..\033[0m ] %s\n" "$1"
}

success () {
    printf "\r\033[2K  [ \033[00;32mOK\033[0m ] %s\n" "$1"
}

warning() {
    printf "\r\033[2K  [\033[0;31mWARNING\033[0m] %s\n" "$1"
}

fail () {
    printf "\r\033[2K  [\033[0;31mFAIL\033[0m] %s\n" "$1"
    echo ''
    exit "${2-1}"
}

# timestamp function
timestamp() {
  date +"%Y-%m-%d %T"
}