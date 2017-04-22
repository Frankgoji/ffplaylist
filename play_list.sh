#! /bin/bash

while read l; do
    ffplay -autoexit "$l"
done < <(cat "$1")
