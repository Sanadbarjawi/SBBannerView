Pod::Spec.new do |spec|

  spec.name         = "SBBannerView"
  spec.version      = "1.0.1"
  spec.summary      = "A handy fully customised banner that could be used to as an internet connection indicator, notification alerts, success messages and so much more!"

  spec.description  = "Fully Customizable (Font, Width, Height, fontColor and many more!) one liner banner, just provide your values and let it do its work 🧙🏻‍♀️"

  spec.homepage     = "https://github.com/Sanadbarjawi/SBBannerView.git"

   spec.screenshots  = "https://github.com/Sanadbarjawi/SBBannerView/blob/main/Readme-Assets/duration/temp.gif", "https://github.com/Sanadbarjawi/SBBannerView/blob/main/Readme-Assets/positions/bottom.gif"

  spec.license      = { :type => "MIT"}

  spec.author       = { "Sanad.b" => "sanadbarj@gmail.com" }

  spec.platform     = :ios, "11.0"

  spec.source       = { :git => "https://github.com/Sanadbarjawi/SBBannerView.git", :tag => "v1.0.1" }
 
  spec.vendored_framework = "SBBannerView.xcframework"

end
