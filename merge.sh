#!/usr/bin/env bash
cd $1

find . -type f -not -path '*/.*' -name '*.ipynb' -exec echo {} + | xargs nbmerge --output "$1"_merged.ipynb
