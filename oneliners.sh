#!/bin/bash

# one line while loop
x=10887; while [ $x -le 10917 ]; do echo "$x"; x=`expr $x + 1` ;done

# one line for loop
for item in `ls *.c *.h`; do echo "converting $item"; a2ps $item -o ${item}.ps ; done

# one line for loop, echo one line at a time from a file
x=1; while [ $x -le $len ]; do echo "$x"; head -$x $filename | tail -1 ;x=`expr $x + 1` ;done

ls *.c | sed 's/^\(.*\).\(.c\)/a2ps \1.c -o \1.ps/' | sh
ls *.h | sed 's/^\(.*\).\(.c\)/a2ps \1.h -o \1.ps/' | sh

for item in `ls *.c`; do filename=$(basename "$item"); extension="${filename##*.}"; filename="${filename%.*}"; echo "converting $filename"; a2ps $filename.$extension $filename.ps ; done
for item in `ls *.h`; do filename=$(basename "$item"); extension="${filename##*.}"; filename="${filename%.*}"; echo "converting $filename"; a2ps $filename.$extension $filename.ps ; done

# one line if
if [ -d /cygdrive/g/VideoLectures/ShapeSpaces/ ]; then echo "hi"; fi

# iterate over range
END=10;for i in $(seq 1 $END); do echo $i; done
INCR=2;END=10;for i in $(seq 1 $INCR $END); do echo $i; done

#identify images (pngs) in a dir
for item in `ls *.png`; do identify $item; done

#crop all images (pngs) in a dir
for item in `ls *.png`; do convert $item -crop 256x256+0+0 ../new_test_images/$item; echo $item; done

#rescale all grayscale images to 0 to 255
for item in `ls *.png`; do convert $item -fx '(u-minima)/(maxima-minima)*255' $item; echo $item; done

# resize images
# use David’s Batch processor for gimp
# Or 
convert  in.png -filter Lanczos –resize 2x out.png
convert  in.png -filter Lanczos –distort Resize 2x out.png

# Recursively search all files for a desired string
SEARCHSTRING=cuda; find . -type f -exec grep -Hn $SEARCHSTRING {} \; | less

# Matches exactly "Some strng to search for"
# c is for count and E is for extended regular expression
grep -cE '(^|\s)Some string to search for($|\s)' $filename

#rename png files
for x in `ls *.png`; do y=${x%.*}; echo $x; echo $y; mv $x ${y}-new.png; done

#remove "-new" from the files
rename 's/-new//g' *.las


   

