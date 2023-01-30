#!/bin/bash

# Set ANSI escape codes using tput
#GREEN=$(tput setaf 2)
RED='${color3}'
GREEN='${color5}'
ORANGE='${color4}'
ALERT='${color6}'
COOL=45
MED=65
WARM=65
ALERT=79

# Calculate average temperature
HOSTION=$(exec nvidia-smi -q -d UTILIZATION | awk '/Gpu/ {print$3}')

# Print temperature in different colors based on temperature range
if [[ $HOSTION -le $COOL ]]; then
  echo "$GREEN$HOSTION"   # COOL
elif [[ $HOSTION -le $MED ]]; then
  echo "$ORANGE$HOSTION"    # MED
elif [[ $HOSTION -ge $WARM ]]; then
  echo "$RED$HOSTION"    # HOT
elif [[ $HOSTION -ge $ALERT ]]; then
  echo "$ALERT$HOSTION"    # HOT
else
  echo "$ALERT$HOSTION"       # ALERT
fi