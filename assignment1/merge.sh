#!/usr/bin/env bash

find . -type f -not -path '*/.*' -name '*.ipynb' -exec echo {} + | xargs nbmerge --output merged.ipynb
