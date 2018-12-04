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
export PATH=$PATH:/Users/pluu/Library/Android/sdk/tools
export PATH=$PATH:/Users/pluu/Library/Android/sdk/platform-tools
export ANDROID_HOME=/Users/pluu/Library/Android/sdk
```
## Install Plugin

- git
