#! /bin/bash

# Use index so that one can make changes to the playlist file while playing
i=1
numlines=$(wc "$1" | cut -d" " -f3)
while [[ $i -le $numlines ]]; do
    ffplay -autoexit "$(sed -n ""$i"p" "$1")"
    numlines=$(wc "$1" | cut -d" " -f3)     # Update step in case edit occurs
    i=$((i+1))
done
