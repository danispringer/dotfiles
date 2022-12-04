#!/bin/zsh
for folder in *; do
    mv $folder/OLDFILENAME $folder/NEWFILENAME
done
echo Done
