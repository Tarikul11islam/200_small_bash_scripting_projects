#!/bin/bash

# Backup Script

# Specify directories to be backed up
backup_directories=("path/to/directory1" "path/to/directory2")

# Destination directory for backups
backup_destination="path/to/backup/folder"

# Create timestamp for the backup folder
timestamp=$(date +"%Y%m%d%H%M%S")
backup_folder="$backup_destination/backup_$timestamp"

# Create backup folder
mkdir -p "$backup_folder"

# Loop through specified directories and copy contents to the backup folder
for directory in "${backup_directories[@]}"; do
    if [ -d "$directory" ]; then
        cp -r "$directory" "$backup_folder"
        echo "Backup of $directory completed."
    else
        echo "Error: $directory does not exist or is not a directory."
    fi
done

echo "Backup process completed. Backup stored in: $backup_folder"
