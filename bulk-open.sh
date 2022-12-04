#!/bin/zsh
count=0

# FROM: https://superuser.com/a/556006/517095
read "filename?Enter file name and press enter: "
for file in $(find /Users/dani/Documents/repos/ -name $filename); do
    subl $file
    ((count += 1))
done
if ((count > 0)); then
    echo Found and opened $count matching files
else
    echo No matching files found
fi

echo Done
