#!/bin/bash

# Work folder
read -p "Please, specify the directory to work on: " folderToWork
for file in ${folderToWork}/*; do
    mv "$file" ${file// /_}
done
