#!/bin/bash
read -p "enter file name: " filename
read -p "enter word to search: " word
if [ -f "$filename" ]; then
	echo "search for $word in $filename "
	grep -inw --color=always "$word" "$filename"
else 
	echo "file not found.."
fi
