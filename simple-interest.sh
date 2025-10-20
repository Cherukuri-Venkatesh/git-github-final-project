#!/bin/bash
# simple-interest.sh
# Usage: bash simple-interest.sh <principal> <time> <rate>

if [ $# -ne 3 ]; then
  echo "Usage: $0 <principal> <time> <rate>"
  exit 1
fi

p=$1
t=$2
r=$3

# Calculate simple interest with bc for decimals
si=$(echo "scale=2; $p * $t * $r / 100" | bc)
echo "The simple interest is: $si"   

Make executable and commit locally:
chmod +x simple-interest.sh
git add simple-interest.sh LICENSE README.md CODE_OF_CONDUCT.md CONTRIBUTING.md
git commit -m "Add project files and simple-interest script"
git push origin main

