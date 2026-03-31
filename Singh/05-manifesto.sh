#!/bin/bash
# ---------------------------------------------------------------------------
# Author: pushpendar (24BSA10341)
# ---------------------------------------------------------------------------
# This script generates a personalized open-source manifesto based on user input and saves it to a text file.
# ---------------------------------------------------------------------------

echo "================================================================================"
echo "                   Firefox AUDIT - MANIFESTO GENERATOR             "
echo "================================================================================"

read -p "What is your name? " name
read -p "What is your favorite open-source project? " project
read -p "Why do you support open-source software? " reason

echo "--------------------------------------------------------------------------------"

echo "Generating manifesto for $name..."

echo "$name believes in the power of open-source software and supports projects like $project because $reason." > $name.txt

echo "Manifesto saved to $name.txt"

echo "================================================================================"