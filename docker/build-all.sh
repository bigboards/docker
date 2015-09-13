#!/bin/bash
# Fail on error
set -e

while read d; do
  if [ ! -z ${d} ] && [[ ${d} != \#* ]]; then
    # skip blank lines and lines starting with #
	echo "Building ${d}"
    ./build.sh ${d}
  fi
done < build-order