//
//  CustomizedBanner.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 06/12/2020.
//

import UIKit

public struct CustomBannerView: Bannerable, Slidable {

    var gesture: SwipeGesture?

    let banner: UIView

    let onWindow: UIWindow

    var configuration: CustomConfiguration

    public init(configuration: CustomConfiguration) {
        self.configuration = configuration
        self.banner = UIView(frame: .zero)
        self.onWindow = UIApplication.shared.getKeyWindow()!
    }

    func applyConfiguration(_ configuration: ConfigurableView) {

    }

    func slideIn() {

    }

    func slideOut() {
        
    }


}
