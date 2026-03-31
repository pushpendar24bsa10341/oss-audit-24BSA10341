#!/bin/bash
# ---------------------------------------------------------------------------
# Author: pushpendar (24BSA10341)
# ---------------------------------------------------------------------------
# This script analyzes Firefox log files by searching for specified keywords, counting occurrences, and displaying the last 5 matching entries.
# ---------------------------------------------------------------------------
# Suggested log path: /var/log/syslog

echo "================================================================================"
echo "                   Firefox AUDIT - LOG FILE ANALYZER              "
echo "================================================================================"

log_file=$1
keyword=$2
count=0
matches=()

echo "Analyzing log file: $log_file"

echo "Searching for keyword: $keyword"

echo "--------------------------------------------------------------------------------"

while IFS= read -r line; do
  if [[ $line == *$keyword* ]]; then
    ((count++))
    matches+=("$line")
  fi
done < $log_file

echo "Found $count occurrences of '$keyword'"

echo "Last 5 matches:"

echo "--------------------------------------------------------------------------------"

for ((i=${#matches[@]}-1; i>=${#matches[@]}-5; i--)); do
  echo -e "${matches[i]}"
done

echo "================================================================================"