# SBBannerView

A fully customisable banner for your iOS(iPhone,iPad) projects

## Description

### SBBannerView could be used as your internet connection indicator, notification alerts, success messages and so much more 🧙🏻‍♀️


## Features

* Easy Customizable (duration, position, cornerRadius, Font, Width, Height, fontColor, textAlignment) 

* Can overlap the previous banner or dismiss the current one before animating in the new banner

* SBBannerView is by default swipable; can be dismissed using swipe gestures

#### SBBanner respects the following:

* both safeAreas (top, bottom)

* UITabbar

* NavigationBar


### Position(Top, Bottom)

```.top``` <img src="/Readme-Assets/positions/fromTop.gif" width="300"/>  ```.bottom``` <img src="/Readme-Assets/positions/bottom.gif" width="300"/>


### Duration (Perminent, Temporary)

```.perminent``` <img src="/Readme-Assets/duration/perm.gif" width="300"/>  ```.temporary(forTimer:_)``` <img src="/Readme-Assets/duration/temp.gif" width="300"/>

## Getting Started

### Dependencies

* supporting iOS, with the minimum deployement target of "11.0"

### Installing

* using Cocoapods: 

```
pod 'SBBannerView', :git => 'https://github.com/Sanadbarjawi/SBBannerView.git', :tag => 'v1.0.2'
```

### Executing program

* How to run the program

* simply import SBBannerView in your desired file
* and use the singleton #SBBannerManager# as the below

```
// setup your configuration: 

let configuration = BannerConfiguration(backgroundColor: <UIColor>,
                                            position: <Position>,
                                            duration: <Duration>,
                                            message: <String>,
                                            textFont: <UIFont>,
                                            textColor: <UIColor>)
        
// Pass the *configuration* to the banner type:  


SBBannerManager.shared.slideIn(_ type: .basic(configuration: configuration), shouldSlideoutPreviousBannerIfFound: Bool)

// to slide out the banner:
SBBannerManager.shared.slideOut()

```

## Authors

Contributors names and contact info

Sanad Barjawi

## Version History

* 1.0.2 iPad support 
* 1.0.1
* 1.0.0

## License

This project is licensed under the MIT License 
