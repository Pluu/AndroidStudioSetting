#!/bin/bash
# Installs IntelliJ templates

echo "Installing template files..."

# find /Applications -path "*.app" -prune -name "*Android Studio*" -print0 | while read -d $'\0' name
find "/Users/$USER/Library/Preferences" -type d -name "*AndroidStudio*" -print0 | while read -d $'\0' folder
do
  echo "Installing to $folder"
  cp -r templates "$folder"
  # 
done

echo "Done."
echo ""