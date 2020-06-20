#!/usr/bin/env bash
# Installs IntelliJ templates

# https://en.wikipedia.org/wiki/ANSI_escape_code
#
# ----------------------------------
# Colors
# ----------------------------------
NOCOLOR='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'

# find, ANDROID_HOME path
if [ -d "$ANDROID_HOME" ]; then
    EMULATOR="$ANDROID_HOME"/emulator/emulator
    array+=(`EMULATOR -list-avds`)
    PS3="Please select : "

    EXIT='exit'
    array+=("$EXIT")

    select VAR in ${array[@]};
    do
        if [ $VAR = $EXIT ]; then
            break
        fi
        echo ""
        echo "${YELLOW}Running${NOCOLOR} $VAR"        
        EMULATOR -avd $VAR -dns-server 8.8.8.8
        break                
    done
else 
    echo "Not found ANDROID_HOME"
fi

echo "Done."
