Pod::Spec.new do |spec|

  spec.name         = "SBBannerView"
  spec.version      = "1.0.0"
  spec.summary      = "A handy fully customised banner"

  spec.description  = "A handy fully customised banner that could be used to as an internet connection indicator, notifications alerts, success messages and so much more!"

  spec.homepage     = "https://github.com/Sanadbarjawi/SBBannerView.git"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  spec.license      = { :type => "MIT"}

  spec.author       = { "Sanad.b" => "sanadbarj@gmail.com" }

  spec.platform     = :ios, "11.0"

  spec.source       = { :git => "https://github.com/Sanadbarjawi/SBBannerView.git", :tag => "v1.0.0" }
 
  spec.vendored_framework = "SBBannerView.xcframework"

end
