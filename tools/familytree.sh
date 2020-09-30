#!/bin/sh
set -eu
cd "$(dirname "$0")"
echo "Entering directory '$PWD'"
set -x
gosh familytree.scm >familytree.dot
dot -T png -o familytree.png familytree.dot
