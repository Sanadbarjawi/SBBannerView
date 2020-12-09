xcodebuild archive \
 -scheme SBBannerView \
 -archivePath "archives/ios.xcarchive" \
 -sdk iphoneos \
 -SKIP_INSTALL=NO

xcodebuild archive \
 -scheme SBBannerView \
 -archivePath "archives/ios-sim.xcarchive" \
 -sdk iphonesimulator \
 -SKIP_INSTALL=NO

xcodebuild -create-xcframework \
-framework archives/ios-sim.xcarchive/Products/Library/Frameworks/SBBannerView.framework \
-framework archives/ios.xcarchive/Products/Library/Frameworks/SBBannerView.framework \
-output builds/SBBannerView.xcframework
