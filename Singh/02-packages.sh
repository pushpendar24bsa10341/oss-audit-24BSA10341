#!/bin/bash
# ---------------------------------------------------------------------------
# Author: pushpendar (24BSA10341)
# ---------------------------------------------------------------------------
# This script checks if Firefox is installed, identifies the system's package manager, and provides philosophy notes about common FOSS tools.
# ---------------------------------------------------------------------------

echo "================================================================================"
echo "                   Firefox AUDIT - PACKAGE INSPECTOR                "
echo "================================================================================"

if [ -x "/usr/bin/firefox" ]; then
  echo "Status: Firefox is INSTALLED on this system."
  echo "Version: $(firefox --version)"
else
  echo "Status: Firefox is NOT installed on this system."
fi

echo "--------------------------------------------------------------------------------"
echo "FOSS Philosophy Notes:"
echo " - Firefox: A free and open-source web browser that promotes user freedom and privacy."
echo " - Linux: An open-source operating system that allows users to customize and modify the source code."
echo " - LibreOffice: A free and open-source office suite that provides an alternative to proprietary software."
echo " - GIMP: A free and open-source raster graphics editor that offers a wide range of features and tools."
echo "================================================================================"