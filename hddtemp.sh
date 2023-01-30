#!/bin/bash

# Set ANSI escape codes using tput
#GREEN=$(tput setaf 2)
RED='${color3}'
GREEN='${color5}'
ORANGE='${color4}'
ALERT='${color6}'
COOL=45
MED=60
WARM=60
ALERT=65

# Calculate average temperature
HOSTION=$(sensors | awk '{ sum += $3 } END { print int(sum/2) }')

# Print temperature in different colors based on temperature range
if [[ $HOSTION < $COOL ]]; then
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
exit 0

