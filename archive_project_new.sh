#!/bin/bash
#$Revision:001$
# Thursday 21 November 2024 11:18:34 PM IST

# Variables
Base="/home/kaushik/Desktop"
Days=10
Depth=1
Run=0

# Check if the base directory exists
if [ ! -d "$Base" ]; then
    echo "Directory does not exist: $Base"
    exit 1
fi

# Create 'archive' folder if not present
if [ ! -d "$Base/archive" ]; then
    mkdir "$Base/archive"
fi

# Find the list of files larger than 20 MB and move them to the archive folder
for i in $(find "$Base" -maxdepth "$Depth" -type f -size +20M); do
    echo "Processing file: $i"
    mv "$i" "$Base/archive/"
    echo "Moved $i to $Base/archive/"
done

