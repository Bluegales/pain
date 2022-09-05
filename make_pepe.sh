#!/bin/bash
find . \( -path ~/Library \) -prune -o -type f -exec bash -c 'Rez -append ./icons/pepe$((1+$RANDOM % 9)).rsrc -o {} && SetFile -a C {}' \;
