# AndroidStudioSetting

## Install, Live Templaste

- 동일한 폴더에 있는 `install.sh`를 실행
- 설치하는 정보
   - colors
   - quicklists
   - templates
      - obtainstyledattribute
      - ConstraintLayout
      - LiveData
   - disabled_plugins

![install_sample](https://github.com/Pluu/AndroidStudioSetting/blob/master/screenshot/install_sample.png)

## Plugin

- .ignore
  - [링크](https://github.com/hsz/idea-gitignore)
- ADB Idea (hsz)
  - [링크](https://github.com/pbreault/adb-idea)
- Android Material Design Icon Generator (konifar)
  - [링크](https://github.com/konifar/android-material-design-icon-generator-plugin)
- CodeGlance (Vektah)
  - [링크](https://github.com/Vektah/CodeGlance)
- kodkod
  - generate kdoc plugin.
  - [링크](https://github.com/siosio/kdoc-generator-intellij-plugin)
- Presentation Assistant
  - This plugin shows name and Win/Mac shortcuts of any action you invoke
  - [링크](https://plugins.jetbrains.com/plugin/7345-presentation-assistant)

### 요즘 안씀

- Kotlin Fill Class
  - [링크](https://github.com/suusan2go/kotlin-fill-class)
- Android ButterKnife Zelezny (avast)
  - [링크](https://github.com/avast/android-butterknife-zelezny)
- Android Parcelable code generator (mcharmas)
  - [링크](https://github.com/mcharmas/android-parcelable-intellij-plugin)
- Material Theme (https://github.com/ChrisRM/material-theme-jetbrains)
   - Darker Theme
   - Editor > Colors & Fonts > General > Editor > Gutter background > Background (#212121)
   - Editor > Colors & Fonts > General > Text > Default Text > Background (#212121)

- - -

## Editor

### Colors & Fonts > General

- Editor > Selection background (#01579B)
- Editor > Selection foreground (#FFFFFF)

### Colors & Fonts > Android Logcat

- Assert (#B87BD5)
- Debug (#54C1E9)
- Error (#F95C5A)
- Info (#8CD10D)
- Verbose (Default)
- Warning (#FAC848)

### Code Style > Java (Option)

*Code Generation Tab*

How set prefix (e.g. “m”) to remove in Android Studio's Alt-Insert getter/setter?

1. Open Default Settings () File -> Other Settings -> Default Settings)
2. Go to Editor -> Java -> Code Genegation
3. Select Preffer Longer names
4. Enter 'm' in Field

*JavaDoc*

1. Checked, Blank likes > After parameter descriptions (Option)
2. Checked, Blank likes > After return tag (Option)
3. Checked, Other > Do not wrap one line comments
