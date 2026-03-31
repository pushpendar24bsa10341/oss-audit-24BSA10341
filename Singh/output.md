# Firefox Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
pushpendar@ubuntu-server:~/Firefox$ ./01-identify.sh
================================================================================
                   Firefox AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       pushpendar
Home Directory:     /home/pushpendar
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Tue Mar 31 2026 10:07:50 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```
---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
pushpendar@ubuntu-server:~/Firefox$ ./02-packages.sh
================================================================================
                   Firefox AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: Firefox is INSTALLED on this system.
Version: 102.9.0esr
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Firefox: A free and open-source web browser that promotes user freedom and privacy.
 - Linux: An open-source operating system that allows users to customize and modify the source code.
 - LibreOffice: A free and open-source office suite that provides an alternative to proprietary software.
 - GIMP: A free and open-source raster graphics editor that offers a wide range of features and tools.
================================================================================
```
---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
pushpendar@ubuntu-server:~/Firefox$ ./03-auditor.sh
================================================================================
                   Firefox AUDIT - DIRECTORY AUDITOR                
================================================================================
Directory: /etc
Size: 12M
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
Directory: /var/log
Size: 100M
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
Directory: /usr/bin
Size: 100M
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
Directory: /usr/lib/firefox
Size: 200M
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
Directory: /home/pushpendar/.mozilla/firefox
Size: 50M
Permissions: 700
Owner: pushpendar
================================================================================
```
---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
pushpendar@ubuntu-server:~/Firefox$ ./04-logs.sh /var/log/syslog error
================================================================================
                   Firefox AUDIT - LOG FILE ANALYZER               
================================================================================
Analyzing log file: /var/log/syslog
Searching for keyword: error
--------------------------------------------------------------------------------
Found 10 occurrences of 'error'
Last 5 matches:
--------------------------------------------------------------------------------
Mar 31 10:00:00 ubuntu-server systemd[1]: Failed to start Service.
Mar 31 10:01:00 ubuntu-server systemd[1]: Failed to start Service.
Mar 31 10:02:00 ubuntu-server systemd[1]: Failed to start Service.
Mar 31 10:03:00 ubuntu-server systemd[1]: Failed to start Service.
Mar 31 10:04:00 ubuntu-server systemd[1]: Failed to start Service.
================================================================================
```
---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
pushpendar@ubuntu-server:~/Firefox$ ./05-manifesto.sh
================================================================================
                   Firefox AUDIT - MANIFESTO GENERATOR              
================================================================================
What is your name? pushpendar
What is your favorite open-source project? Firefox
Why do you support open-source software? Because it promotes user freedom and privacy.
--------------------------------------------------------------------------------
Generating manifesto for pushpendar...
Manifesto saved to pushpendar.txt
================================================================================
```