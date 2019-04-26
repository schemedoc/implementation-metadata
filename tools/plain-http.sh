#!/bin/sh
#
# Show all URLs using plain unencrypted HTTP instead of HTTPS. Many
# sites default to plain HTTP but still support HTTPS if you change it
# yourself.
#
set -eu
cd "$(dirname "$0")"/..
grep -iF http: *.scm
