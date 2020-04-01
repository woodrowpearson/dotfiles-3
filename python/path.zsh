#!/bin/sh
export PATH="$PATH:/usr/local/bin/python3.8/"

validate_install() {
    command -v python3 >/dev/null 2>&1 && echo Python 3 is installed  # POSIX-compliant
}
