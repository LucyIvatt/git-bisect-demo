#!/bin/bash

# You may need to run 'chmod +x script.sh' to be able to run this first

# Run the Python script and capture its output
output=$(python3 calculator.py)
printf "%s\n" "$output"

# Check the output and mark the commit as good or bad
if [[ "$output" == *"5 + 3 = 125"* ]]; then
  echo "Bad commit found"
  exit 1  # Bad
elif [[ "$output" == *"5 + 3 = 8"* ]]; then
  echo "Good commit found"
  exit 0  # Good
else
  echo "Unexpected output: $output"
  exit 125  # Skip
fi
