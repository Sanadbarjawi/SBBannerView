# SBBannerView

A handy fully customised banner

## Description
### Fully Customizable (Font, Width, Height, fontColor and many more!)
A handy fully customised banner that could be used to as an internet connection indicator, notifications alerts, success messages and so much more! a one liner easy to use banner, just provide your values and let it do its work 🧙🏻‍♀️




## Features


* SBBannerView can overlap the previous banner or dismiss the current one before animating in the new banner

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
pod 'SBBannerView', :git => 'https://github.com/Sanadbarjawi/SBBannerView.git', :tag => 'v1.0.0'
```
### Executing program

* How to run the program

* simply import SBBannerView in your desired file
* and use the singleton #SBBannerManager# as the below

```
SBBannerManager.shared.slideIn(_ type: BannerViewType, shouldSlideoutPreviousBannerIfFound: Bool)
SBBannerManager.shared.slideOut()
```

## Authors

Contributors names and contact info

ex. Sanad Barjawi
ex. [@MAF](https://www.majidalfuttaim.com/en)

## Version History

* 1.0.0
    * Initial Release

## License

This project is licensed under the [MIT] License 
