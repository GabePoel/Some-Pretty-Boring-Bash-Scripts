#!/bin/bash

cd ~/Configuration/Icons

for file in Packs/McMojave-circle/src/apps/scalable/*.svg
do
    echo $file
    basename=$(basename -- "$file")
    filename="${basename%.*}"
    path="Exports/Export4/Apps/"
    pngname="${path}${filename}.png"
    inkscape -z -e $pngname -w 512 -h 512 $file
done
