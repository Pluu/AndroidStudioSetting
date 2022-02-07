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

## Print a horizontal rule
divider () {
	printf -v _hr "%*s" $(tput cols) && echo ${_hr// /${1--}}
}

# find /Applications -path "*.app" -prune -name "*Android Studio*" -print0 | while read -d $'\0' name

# check, install root path
DIR_LIST=(
    "/Users/$USER/Library/Preferences"
    "/Users/$USER/Library/Application Support/Google"
)

# find, installed path
IFS=$'\n'

array=()
for VAR in "${DIR_LIST[@]}"; 
do
    array+=(`find "$VAR" -type d -name "*AndroidStudio*"`)
done

# size check
# echo "${#array[@]}"

EXIT='exit'
array+=("$EXIT")

# set, setting folders
folders=( "colors" "quicklists" "templates" )
files=( "disabled_plugins.txt" )

PS3="Please select : "

# run select
select VAR in "${array[@]}"; 
do
    if [ $VAR = $EXIT ]; then
        break
    fi

    echo ""
    divider
    echo "${LIGHTRED}Installing${NOCOLOR} to $VAR"

    if (( ${#folders[@]} )); then
        echo "${YELLOW}Folders${NOCOLOR}"
        # Install Folder Data
        for folder in ${folders[*]}; do
            echo "  $folder"
            cp -r $folder "$VAR"
        done
    fi

    if (( ${#files[@]} )); then
        echo "${YELLOW}Files${NOCOLOR}"
        # Install Files
        for file in ${files[*]}; do
            echo "  $file"
            cp $file "$VAR"
        done
    fi

    echo "${LIGHTCYAN}Complete${NOCOLOR} installed"
    divider
    break
done
echo "Done."
