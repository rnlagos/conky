#!/bin/bash
RED='${color red}'
GREEN='${color cyan}'
ORANGE='${color orange}'
alignr='${alignr}'

 
if ping -c 1 -W 2 $1 > /dev/null; then
echo -e "$ORANGE\u2697 $GREEN \u2714$WHITE"
else
echo -e "${alignr}$ORANGE\u2697 $RED \u2716$WHITE"
fi