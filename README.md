# OSS Capstone Project - Git Audit

Student Name:Leonard Alphons 
Registration Number: 24BCY10028 
Slot: B22  
Chosen Software: Git(Version Control System)  
License: GPL v2  
Date of Submission: March 31, 2026

## 📋 Project Overview
This repository contains 5 shell scripts for the OSS Capstone Project. The project audits Git- the distributed version control system created by Linus Torvalds in 2005.

## 🛠️ Shell Scripts

### Script 1. System Identity Report
File: "script1_system_identity.sh"  
Purpose: Displays Linux system info  
Concepts:Variables, command substitution, echo formatting  
Step-by-Step Instructions: 
                          1) Make Executable: chmod +x script1_system_identity.sh
                          2) Run: ./script1_system_identity.sh
                          3) Expected Output: Information about the system + Git philosophy statement
                             ==================================================
                             Open Source Audit - [Your Name]
                             Registration: [Your Roll Number]
                             Distribution: Ubuntu 22.04 LTS
                             Kernel: 5.15.0-73-generic
                             User: student
                             Home: /home/student
                             Uptime: up 2 days, 3 hours
                             Date: March 31, 2026 09:53 PM IST

## Script 2. FOSS Package Inspector
File: "script2_git_inspector.sh"
Purpose: Checks if Git is installed, displays version, and explains Git's philosophical origin (Linus Torvalds, BitKeeper crisis).  
Concepts Demonstrated: "if-then-else", "case statement", "command -v", "grep".
Step-by_Step Instruction:
                          1) Make Executable: chmod +x script2_git_inspector.sh
                          2) Run: ./script2_git_inspector.sh
                          3) Expected Output: Status of Git + Historical Context
                             ✓ Git is INSTALLED
                             git version 2.34.1
                             Philosophy: Git was created by Linus Torvalds in 2005 when
                             BitKeeper revoked Linux kernel developers' access.

## Script 3. Disk and Permission Auditor
File: "script3_git_auditor.sh"
Purpose: Loops through 8 critical system directories, reports disk usage, owner/group, and permissions.  
Concepts Demonstrated: "for" loop, "awk", "du", "printf" table formatting, conditional testing "if [ -d ]".
Step-by-Step Instruction:
                          1) Make Executable: chmod +x script3_disk_auditor.sh
                          2) Run: ./script3_disk_auditor.sh
                          3) Expected Output: Formatted table of directory analysis
                             DIRECTORY PERMISSIONS SIZE
                             /etc drwxr-xr-x root:root 12M
                             /var/log drwxr-xr-x root:adm 256M
                             /home drwxr-xr-x root:root 1.2G


## Script 4: Log File Analyzer
File: "script4_log_analyzer.sh"  
Purpose: Reads log file line-by-line, counts keyword occurrences (ERROR/WARNING), shows last 5 matches.  
Concepts Demonstrated: "while IFS= read -r" loop, counter variables, command-line arguments "$1 $2", g'rep -i".  

Step-by-Step Instructions:
                           1) Make Executable: chmod +x script4_log_analyzer.sh 
                           2) Run: ./script4_log_analyzer.sh
                           3) Run with custom keyword: ./script4_log_analyzer.sh /var/log/syslog ERROR
                           4) Expected Output: 
                              Keyword 'error' found 23 times
                              Last 5 matching lines:
                              Mar 30 14:23:15 hostname kernel: ERROR: buffer overflow


## Script 5: Open Source Manifesto Generator
File: "script5_manifesto.sh" 
Purpose: Interactive script asking 3 questions, generates personalized open source philosophy, saves to file.  
Concepts Demonstrated: "read -p" for user input, string concatenation, file writing ("cat >"), heredoc "<< EOF", "date".  

Step-by-Step Instructions:
                          1) Make Executable: chmod +x script5_manifesto.sh
                          2) Run: ./script5_manifesto.sh
                          3) ANswer 3 questions interactively
                          4) Output saved as: manifesto_username_YYYYMMDD.txt


## 💻 System Requirements & Dependencies

| Requirement | Details |
|-------------|---------|
| Operating System | Linux (Ubuntu/Debian/CentOS/Fedora) or WSL2 |
| Shell | Bash (default on Linux) |
| Core Utilities | `grep`, `awk`, `cut`, `du`, `ls`, `uname` (standard) |
| Optional | `lsb_release` (for distro detection), `/var/log` read access |
| Git | Installed for Script 2 (not required to run scripts) |
| Permissions | Execute permission on `.sh` files, read access to system directories |

**No external packages or internet required.** Scripts use only core Linux utilities.

## 🧪 Testing Instructions

1. **Clone this repository:**
   ```bash
   git clone https://github.com/yourusername/oss-audit-yourrollnumber.git
   cd oss-audit-yourrollnumber
   
2. Make all scripts executable:

   bash
  chmod +x script*.sh
  Run each script:

3. bash
  ./script1_system_identity.sh
  ./script2_git_inspector.sh
  ./script3_disk_auditor.sh
  ./script4_log_analyzer.sh /var/log/syslog error
  ./script5_manifesto.sh

