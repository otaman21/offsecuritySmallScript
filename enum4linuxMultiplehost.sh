#!/bin/bash

# File containing IPs
ip_list="Path/to/ips.txt"

# Directory to save results
output_dir="enum4linux_results"
mkdir -p $output_dir

# Loop through each IP
while read -r ip; do
    echo "Scanning $ip with enum4linux..."
    enum4linux "$ip" > "$output_dir/$ip.txt"
done < "$ip_list"

echo "Scanning completed. Results are saved in $output_dir."
