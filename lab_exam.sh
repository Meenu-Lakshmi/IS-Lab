#!/bin/bash

ls -l > permission1.txt
cat permission1.txt

for file in *; do
    if [ -f "$file" ]; then
        if grep -q "virus" "$file"; then
            chmod -x "$file"
        else
            echo "$file: no virus"
        fi
    fi
done

ls -l
