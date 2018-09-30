#!/bin/bash

# removes files from the folder and its subfolders
# won't remove folders, only files

folder="/path/to/folder"
number_of_newest_files_to_keep="10"

find "$folder" -type f -printf "%T+\t%p\n" | sort | head -n -$number_of_newest_files_to_keep | cut -f 2 | xargs -d '\n' rm -- 
