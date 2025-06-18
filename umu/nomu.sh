#!/bin/bash
# Loop through args and clean the one with AppId=... --
new_args=""
for arg in "${@:2}"; do
    new_arg=$(echo "$arg" | sed 's/\(AppId=[0-9]\+\) --/\1/')
    new_args="$new_args \"$new_arg\""
done

# Now evaluate with cleaned arguments
eval "$1 $new_args"