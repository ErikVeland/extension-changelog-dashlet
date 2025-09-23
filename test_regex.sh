#!/bin/bash

push_url=$(git remote get-url origin)
echo "URL: '$push_url'"

# Test the regex
if [[ "$push_url" =~ https://github\.com/([^/]+)/ ]]; then
    echo "Regex matched!"
    echo "Full match: '${BASH_REMATCH[0]}'"
    echo "Capture group 1: '${BASH_REMATCH[1]}'"
    echo "Number of capture groups: ${#BASH_REMATCH[@]}"
    for i in "${!BASH_REMATCH[@]}"; do
        echo "  BASH_REMATCH[$i]: '${BASH_REMATCH[$i]}'"
    done
else
    echo "Regex did not match"
fi