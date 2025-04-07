#!/bin/bash
read -p "enter filename: " filename
if [ -f "$filename" ]; then
	lines=$(wc -l < "$filename")
	words=$(wc -w < "$filename")
	echo "file "$filename" has "$lines" lines."
	echo "file "$filename" has "$words" words."
else
	echo "file not exist."
fi
