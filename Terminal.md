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

# Android SDK Setting
1. echo 'export ANDROID_HOME=/Users/$USER/Library/Android/sdk' >> ~/.zshrc
2. echo 'export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools' >> ~/.zshrc
3. source ~/.zshrc
```
## Install Plugin

- git
- brew cask install android-platform-tools
