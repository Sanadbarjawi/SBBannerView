# SBBannerView

A handy fully customised banner

## Description

A handy fully customised banner that could be used to as an internet connection indicator, notifications alerts, success messages and so much more!

## Getting Started

### Dependencies

* supporting iOS, with the minimum deployement target of "11.0"

### Installing
* using Cocoapods: pod 'SBBannerView', :git => 'https://github.com/Sanadbarjawi/SBBannerView.git', :tag => '1.0.0'

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
