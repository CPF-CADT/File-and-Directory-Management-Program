# Opreating System Project
## Team Member (SE GROUP 3)
- Sat Panha
- Phy Vathanak
- Chhun Sivheng
- Choun Rathanak
- Lim Lyheang


# Bash File Management Script

This script provides a set of powerful tools to manage files and directories from the command line on any Unix-based system (Linux, macOS, or any OS that can run Bash scripts). The program allows users to perform the following tasks:

1. List all files and sub-directories with detailed information.
2. Create backups of individual files and entire directories.
3. Count the number of files in a directory.
4. Display disk usage of a given directory.
5. Search for files by name or extension within a directory.
6. Compress files or directories.
7. Extract file
8. Keep a log file (`script.log`) of all actions performed.

The program is interactive and prompts the user to input details for each action. A log file tracks all actions for future reference.

## Features

### 1. List Files and Sub-directories
This function lists all the files and sub-directories of a given directory, along with detailed information including:
- File permissions
- File size
- Last modified date
- Owner and group information

By provide the directory location, and the script will display the details.

### 2. Create Backups of Files and Directories
create backups of:
- A single file
- An entire directory (including sub-directories)

The script will ask the user for:
- The file or directory to back up
- The location where the backup should be stored

It creates a copy of the specified file or directory in to the chosen backup location.
### 3. Count the Number of Files in a Directory
This feature counts and displays the total number of files in a specified directory. It does not include sub-directories.

### 4. Display Disk Usage
The script will show the disk usage (in bytes, kilobytes, megabytes) of a specified directory. It helps you track how much space the directory and its contents are using on the disk.

You will need to enter the directory for which you want to check disk usage. The output will display the total disk space used by the directory and its files.

### 5. Search for a File by Name or Extension
The program allows you to search for a specific file by its name or extension in a given directory. You will input:
- The directory to search in
- The filename or file extension to search for (e.g., `.txt`, `.sh`)

The script will return a list of all files matching the search criteria.

### 6. Compress Files or Directories And Extract file

The `compress` function allows you to compress files or directories into various formats, such as `.zip`, `.tar`, and `.gz`. This can be useful for creating backups, reducing file sizes for storage, or transferring data in a compressed format.

### Function Purpose:

You can use this function to specify:

- **The file or directory to compress.**
- **The location and name of the compressed output file.**
### Extract (Addtion)
You can extract file that compressed with support file type  `.zip`, `.tar`, and `.gz` in to a folder.

The program will then compress the target file or directory into the specified archive format (e.g., `.tar.gz`, `.zip`, `.tar`), and store it at the location you provide.

### 7. Keep a Log of All Actions
The script maintains a log file, `script.log`, that records all actions performed. Each time the user interacts with the script, the action and the timestamp are appended to this log file. This helps you track what actions have been taken and when they were performed.

The log file is saved in the same directory where the script is executed.

## Requirements

- A system capable of running Bash scripts (Linux, macOS, or any other Unix-based OS).
- Git installed to clone the repository and track code changes.
- Terminal or command-line interface to run the script.

## Installation

### Step 1: Clone the Repository

<div style="border: 1px solid #ccc; padding: 10px; background-color: #f9f9f9;">
<pre>
git clone https://github.com/CPF-CADT/File-and-Directory-Management-Program.git
</pre>
</div>

---

### Step 2: Set Permissions to `main.sh` File

<div style="border: 1px solid #ccc; padding: 10px; background-color: #f9f9f9;">
<pre>
chmod +x main.sh
</pre>
</div>

---
### Step 2: Run `main.sh` File

<div style="border: 1px solid #ccc; padding: 10px; background-color: #f9f9f9;">
Option 1
<pre>
bash main.sh 
</pre>
Option 2
<pre>
./ main.sh 
</pre>
</div>
