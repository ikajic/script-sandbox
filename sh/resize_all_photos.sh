#!/bin/sh

for file in *.JPG
do
    convert $file -resize 50% output/$file
done

echo "Size of all images before resizing: `du -sh .`"
echo "Size of all images after resizing: `du -sh output`"
