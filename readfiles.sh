eck #!/bin/bash
i=1
for f in *; do
	if [ -f "$f" ]; then
		echo "$i. FILE NAME: $f"
		echo "$(< "$f")"
		((i++))
		echo
	fi 
done
