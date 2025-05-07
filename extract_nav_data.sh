#!/bin/bash

url="https://www.amfiindia.com/spages/NAVAll.txt"

curl -s $url -o NAVAll.txt

awk -F'|' '{print $1"\t"$10}' NAVAll.txt > nav_data.tsv

rm NAVAll.txt

echo "Data has been saved as nav_data.tsv"
