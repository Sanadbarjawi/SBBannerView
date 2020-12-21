Pod::Spec.new do |spec|

  spec.name         = "SBBannerView"
  spec.version      = "1.0.2"
  spec.summary      = "a fully customisable banner for your iOS(iPhone,iPad) projects"

  spec.description  = "A fully customisable banner (Font, Width, Height, fontColor and many more!), that could be used to as your internet connection indicator, notification alerts, success messages and so much more 🧙🏻‍♀️"

  spec.homepage     = "https://github.com/Sanadbarjawi/SBBannerView.git"

  spec.license      = { :type => "MIT"}

  spec.author       = { "Sanad.b" => "sanadbarj@gmail.com" }

  spec.platform     = :ios, "11.0"

  spec.source       = { :git => "https://github.com/Sanadbarjawi/SBBannerView.git", :tag => "v1.0.2" }
 
  spec.vendored_framework = "SBBannerView.xcframework"

end
