#!/bin/bash
# Fail on error
set -e

while read d; do
  if [ ! -z ${d} ]; then
    if [[ ${d} != \#* ]]; then
	  echo "Building ${d}"
#	  ./build.sh ${d}
	fi
  fi
done < build-order