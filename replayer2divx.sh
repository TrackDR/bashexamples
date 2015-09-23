#!/bin/bash

### Convert rm to divx in linux using mencoder(mplayer)

### good for rencoding realplayer video to divx ###
### then you can put it in virtualdub or batchdpg or whatever
### and rencode to watch on your favorite portable device of choice
###
### It's terribly useful for watching 
### mit ocw lectures on your nintendo DS :)
###--that requires putting the result of this in batchdpg(windows)
### I still need to write a script that goes directly 
### from rm to dpg--oh well

### use if you have lame(mp3 encoder) installed ###
mencoder -ovc lavc -lavcopts vcodec=mpeg4:vpass=2 \
-lavcopts vbitrate=24000000 -lavcopts vqmin=3 -lavcopts keyint=30 \
-oac mp3lame -lameopts vbr=3 \
${item} -o ${item}.mp3.mpeg4.avi -ffourcc DX50
##################################

### use if you don't have lame installed ###
mencoder -ovc lavc -lavcopts vcodec=mpeg4:vpass=1 \
-lavcopts vbitrate=24000000 -lavcopts vqmin=3 -lavcopts keyint=30 \
-oac pcm \
${item} -o ${item}.pcm.mpeg4.avi -ffourcc DX50
#################################
