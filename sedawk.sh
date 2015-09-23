#!/bin/bash

# Replace all words in current file
sed -i 's/old/new/g' *.txt

# Replace all words and dump to new file
sed 's/old/new/g' input.txt > output.txt

# Replace paths
sed 's#/path2replace/bin/#/newpath/sbin/#g' input.txt > output.txt
