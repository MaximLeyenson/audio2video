#!/bin/bash

# Usage:   
#            create-slideshow  <image.jpg> <audio.mp3>    
#            create-slideshow  <image.jpg> <audio.ogg>    

#            this script is very slow

# ----------------------------------------------------------------------
# Checking  for sanity of the arguments
# ----------------------------------------------------------------------

if [ $# == 2 ]
  then
    echo "(OK, given two parameters)"
    echo "(warining: this script is very slow)"
  else
     echo "Need two arguments!! "
     echo " Usage:  "
     echo "        $ create-slideshow  <image> <audio-file> " 
     echo " For example, "
     echo "        $ create-slideshow  <image.jpg> <audio.mp3>   " 
     echo "        $ create-slideshow  <image.jpg> <audio.ogg>  "    
     xit 1
fi

# ----------------------------------------------------------------------

# basic example

#     $ ffmpeg -loop 1 -i img.jpg -i audio.m4a -c:v libx264 -c:a copy -shortest out.mp4

# following
# https://trac.ffmpeg.org/wiki/Slideshow
# ----------------------------------------------------------------------

## testing: 
#            jpg + mp3 -> mp4: OK
#            jpg + ogg -> mp4: OK

# ----------------------------------------------------------------------

o="`basename $2 .ogg`"
o="`basename $o .mp3`"
o="`basename $o .m4a`"
o="$o".mp4

echo " > Will be writing output to $o "

ffmpeg -loop 1   -i $1    -i $2   -c:v libx264 -c:a copy -shortest  $o

# Valid combinations:   MP3 audio -> AVI; 
#                       M4A/AAC audio -> MP4   to use 'copy' filter (without re-encoding)
