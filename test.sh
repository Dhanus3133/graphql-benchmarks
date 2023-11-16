#!/bin/bash

# Function to calculate the average of numbers passed as arguments
function average() {
    echo "$@" | awk '{for(i=1;i<=NF;i++) s+=$i; printf "%\047.2f\n", s/NF}'
}

# Example usage
# numbers="57029929.54 92884998.8867 10386.0433"
# Format numbers with commas
formattedNumbers=$(echo $numbers | awk '{gsub(/,/,""); printf "%\047.2f\n", $1}')

echo "Numbers: $formattedNumbers"
echo "Average: $result"

# Write output to README2.md
echo -e "Numbers: $formattedNumbers\nAverage: $result" > README2.md
