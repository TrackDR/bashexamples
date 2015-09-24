#!/bin/bash

# one line while loop
x=10887; while [ $x -le 10917 ]; do echo "$x"; x=`expr $x + 1` ;done

# one line for loop
for item in `ls *.c *.h`; do echo "converting $item"; a2ps $item -o ${item}.ps ; done

# one line if
if [ -d /cygdrive/g/VideoLectures/ShapeSpaces/ ]; then echo "hi"; fi

# iterate over range
END=10;for i in $(seq 1 $END); do echo $i; done
INCR=2;END=10;for i in $(seq 1 $INCR $END); do echo $i; done
