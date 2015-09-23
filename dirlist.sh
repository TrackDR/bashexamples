#!/bin/bash

### list only directories or hidden directories

#courtesy of http://ubuntu.wordpress.com/2005/10/19/list-only-the-directories/

#list directories
ls -d */

#list hidden directories
ls -d .*/

# another method
for i in $(ls -d */); do echo ${i%%/}; done

#and another
find . -type d -printf ‘%P\b’

#and another
echo */ ” ” | sed -e "s/\//\n/g"

#and another
find . -type d -maxdepth 1 -mindepth 1

#and another
find . -maxdepth 1 -mindepth 1 -type d -print0 | xargs -0 | sed -e "s/.\//\n/g"

###
#how much disk space each directory takes up
###
find . -maxdepth 1 -mindepth 1 -type d -print0 | xargs -0 du -sh
