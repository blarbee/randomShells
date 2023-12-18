#!/bin/bash

path="./VSCodeExtensions" #\ for path on windows
ext=".vsix"
files=($(find "$path" -maxdepth 1 -type f -name "*.$ext"))

for file in "${files[@]}"; do
    echo "Installing $file"
    code --install-extension "$file"
done
echo "Done :)"