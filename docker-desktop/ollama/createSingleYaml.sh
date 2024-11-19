#!/bin/bash

# Create the output file (or overwrite if it exists)
output_file="combined.txt"
> "$output_file"

# Find all YAML files in the current directory
find . -maxdepth 1 -name "*.yaml" -print0 | while IFS= read -r -d '' file; do

  # Add --- separator before each file's content
  echo "" >> "$output_file"
  echo "---" >> "$output_file"

  # Add the file's content to the output file
  cat "$file" >> "$output_file"

done