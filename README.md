# 詰め共円 for iOS

[![Circle CI](https://circleci.com/gh/noboru-i/kyouen-ios.svg?style=svg)](https://circleci.com/gh/noboru-i/kyouen-ios)

[iTunes でダウンロード](https://itunes.apple.com/jp/app/jieme-gong-yuan/id792426923?mt=8)

## How to update version

1. update `CFBundleShortVersionString` by Xcode.
2. merge to master branch.
3. create tag. name mast be `vN.N.N` format.

## How to add library

Add library to Carthfile or Podfile.

```
carthage update --platform iOS --no-use-binaries --cache-builds
bundle exec pod install
license-plist --output-path TumeKyouen/Resources/Settings.bundle
```
