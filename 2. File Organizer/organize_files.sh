#!/bin/bash

# Create directories for organizing files
image_dir="Images"
document_dir="Documents"
code_dir="Code"
other_dir="Other"

# Create directories if they don't exist
mkdir -p "$image_dir" "$document_dir" "$code_dir" "$other_dir"

# Organize files by moving them to appropriate directories
for file in *; do
    if [ -f "$file" ]; then
        extension="${file##*.}"
        
        case "$extension" in
            jpg|jpeg|png|gif)
                mv "$file" "$image_dir/"
                ;;
            pdf|doc|docx|txt)
                mv "$file" "$document_dir/"
                ;;
            sh|bash|py|java)
                mv "$file" "$code_dir/"
                ;;
            *)
                mv "$file" "$other_dir/"
                ;;
        esac
    fi
done

echo "Files organized successfully!"
