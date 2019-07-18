#!/bin/bash
# Installs IntelliJ templates

# find /Applications -path "*.app" -prune -name "*Android Studio*" -print0 | while read -d $'\0' name
array=`find "/Users/$USER/Library/Preferences" -type d -name "*AndroidStudio*"`

EXIT='exit'
array=("$array $EXIT")
folders=( "colors" "quicklists" "templates" )

PS3="Please select : "

select VAR in $array
do
    if [ $VAR = $EXIT ]; then
        break
    fi

    echo ""
    echo "Installing to $VAR"

    # Install Folder Data
    for folder in ${folders[*]}; do
        echo ">>" $folder "<<"
        cp -r $folder "$VAR"
    done

    # Install Files
    cp disabled_plugins.txt "$VAR"

    echo "Complete installed"
    echo ""
done
echo "Done."