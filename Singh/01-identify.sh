#!/bin/bash
# ---------------------------------------------------------------------------
# Author: pushpendar (24BSA10341)
# ---------------------------------------------------------------------------
# This script identifies the Linux distribution, kernel version, current user, home directory, system uptime, and date.
# It also prints an open-source freedom message.
# ---------------------------------------------------------------------------

echo "================================================================================"
echo "                   Firefox AUDIT - SYSTEM IDENTITY                   "
echo "================================================================================"

echo "Linux Distribution: $(lsb_release -ds)"
echo "Kernel Version:     $(uname -r)"
echo "Current User:       $(whoami)"
echo "Home Directory:     $(pwd)"
echo "System Uptime:      $(uptime)"
echo "Current Date/Time:  $(date)"
echo "--------------------------------------------------------------------------------"
echo "Message: This system runs on Open Source software, providing freedom to study, change, and distribute."
echo "================================================================================"