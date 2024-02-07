### Description

The script uses a for loop to iterate over each file in the current directory, and checks if the file is a regular file (i.e., not a directory or a symlink). If the file is a regular file, the script extracts its extension using the syntax ${file##*.}, and compares it with a list of common file extensions (jpg, jpeg, png, gif, pdf, doc, docx, txt, sh, bash, py, and java). Based on the matched extension, the script moves the file to the corresponding directory (e.g., images for jpg, jpeg, png, and gif files).

 The script also creates four directories (images, documents, code, and other) if they don't already exist, using the mkdir command with the -p option to create parent directories as needed.

Finally, the script outputs a success message after all files have been organized.

### HOW TO USE

Save this script to a file `organize_files.sh`, and make it executable using the following command:

```
 chmod +x organize_files.sh
 ```

You can then run the script by executing:

```
./organize_files.sh
```

This script categorizes files based on their extensions into Image, Document, Code, and Other directories. You can customize the script to include additional file types or modify directory names based on your preferences.