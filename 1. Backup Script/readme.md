### Description

A bash script for creating backups. The script starts by specifying a list of directories to be backed up in an array called backup_directories. The script then defines a destination directory for the backups, and creates a timestamp for the backup folder using the date command.

Next, the script creates a backup folder in the destination directory using the mkdir command, and ensures that the folder exists by using the -p option.
The script then loops through each directory in the backup_directories array, and copies its contents to the backup folder using the cp -r command. If the directory does not exist or is not a directory, the script displays an error message.

Finally, the script displays a message indicating that the backup process is complete, and specifies the location of the backup folder.


### HOW TO USE

Save this script to a file, `backup_script.sh`.Make it executable using the command:

 ```
 chmod +x backup_script.sh
 ```
 
 
 Then you can run it by executing:

```
./backup_script.sh
```

This script creates a timestamped folder in the specified backup destination and copies the contents of the specified directories into that folder. Adjust the `backup_directories` and `backup_destination` variables according to your requirements.

