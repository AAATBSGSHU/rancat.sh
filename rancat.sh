#!/bin/bash

FOLDER_PATH="/path/to/your/foldert" 

if [ ! -d "$FOLDER_PATH" ]; then
  echo "The specified folder does not exist."
  exit 1
fi

txt_files=("$FOLDER_PATH"/*.txt)

if [ ${#txt_files[@]} -eq 0 ]; then
  echo "No .txt files found in the specified folder."
  exit 1
fi

selected_file="${txt_files[RANDOM % ${#txt_files[@]}]}"

echo "Running 'cat' on: $selected_file"
cat "$selected_file"
