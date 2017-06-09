#!/bin/bash

# Work folder
folderToRead="$HOME/testing"

for file in *; do
    mv "$file" ${file// /_}
done
