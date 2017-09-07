# Use new XCode with old iOS SDK

In this example we'll go from XCode 8 with SDK 10.3 to XCode 9 with SDK 11.0.

* Copy old SDK from old XCode package contents to the new one:

  `cp -rf  /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk /Applications/Xcode-beta.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS10.3.sdk`

* Open `/Applications/Xcode-beta.app/Contents/Developer/Platforms/iPhoneOS.platform/Info.plist ` with XCode and change the `minimumSDKversion` to the old SDK version (10.3).

* Restart the new XCode.

* In the project's Build settings (All), set `Base SDK` to the old SDK version (10.3).

You can now build with the old SDK with the new XCode, on an iPhone running iOS 11.0 (if you see 2 identical build targets, one of them may not work).
