# Homebrew 설치

- https://brew.sh/

# Iterm2 설치

- https://www.iterm2.com/
- Color
   - https://github.com/mbadolato/iTerm2-Color-Schemes
   - DimmedMonokai

# Zsh 설치

- brew install zsh

## Zsh Profile

```
# cd into whatever is the forefront Finder window.
cdf() {  # short for cdfinder
  cd "`osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)'`"
}

# Android
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/emulator
export PATH=${PATH}:$ANDROID_HOME/tools
export PATH=${PATH}:$ANDROID_HOME/tools/bin
export PATH=${PATH}:$ANDROID_HOME/tools/lib/x86_64
export PATH=${PATH}:$ANDROID_HOME/platform-tools
export PATH=${PATH}:$ANDROID_HOME/build-tools/30.0.3

export PATH="/Users/pluulove/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# java
export JAVA_HOME=$(/usr/libexec/java_home -v11)
export PATH=$PATH:${JAVA_HOME}/bin
```
## Install Plugin

- git
- brew cask install android-platform-tools
