#!/bin/bash
# Fail on error
set -e

while read d; do
	if [ ! -z ${d} ]; then
		echo "Building ${d}"
		build.sh ${d}
    fi
done < build-order