#! /bin/bash

i=0
while read l; do
    i=$(echo $(ffprobe -i "$l" -show_entries format=duration -v quiet -of csv="p=0") + $i | bc);
done < <(cat "$1")
echo $(echo $i/60 | bc) minutes, $(echo $i%60 | bc) seconds
