#!/bin/bash
# ---------------------------------------------------------------------------
# Author: pushpendar (24BSA10341)
# ---------------------------------------------------------------------------
# This script audits critical system and Firefox-specific directories, reporting their size, ownership, and file permissions.
# ---------------------------------------------------------------------------

dirs=("/etc" "/var/log" "/usr/bin" "/usr/lib/firefox" "/home/$USER/.mozilla/firefox")

echo "================================================================================"
echo "                   Firefox AUDIT - DIRECTORY AUDITOR               "
echo "================================================================================"

for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    echo -e "Directory: $dir"
    echo -e "Size: $(du -sh $dir | awk '{print $1}')"
    echo -e "Permissions: $(stat -c %a $dir)"
    echo -e "Owner: $(stat -c %U $dir)"
    echo -e "--------------------------------------------------------------------------------"
  else
    echo -e "Directory: $dir (NOT FOUND)"
    echo -e "--------------------------------------------------------------------------------"
  fi

done

echo "================================================================================"