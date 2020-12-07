//
//  BasicBanner.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 06/12/2020.
//

import UIKit

public struct BasicBannerView: Bannerable, Slidable {

    var gesture: SwipeGesture?

    let banner: UIView

    let configuration: BasicConfiguration

    let onWindow: UIWindow = UIApplication.shared.getKeyWindow()!

    public init(configuration: BasicConfiguration) {
        self.configuration = configuration
        self.banner = UIView()
        self.gesture = SwipeGesture(on: self, configuration)

        applyConfiguration(configuration)
        addSwipeGesture()
    }

    func applyConfiguration(_ configuration: ConfigurableView) {
        if let configuration = configuration as? BasicConfiguration {
            banner.backgroundColor = configuration.backgroundColor
            banner.frame = CGRect(x: 0, y: 0,
                                  width: UIScreen.main.bounds.width,
                                  height: configuration.height)
        }
    }

    func slideIn() {
        onWindow.addSubview(banner)

        let initialYPosition = getInitialYPosition(configuration)
        let finalYPosition = getFinalYPosition(configuration)
        let duration = configuration.duration

        switch duration {
        
        case .temporary(forTimer: let time):
            Animator.animateInTemporary(banner,
                                        time,
                                        initialYPosition,
                                        finalYPosition)

        case .perminent:
            Animator.animateInPermenent(banner,
                                        initialYPosition,
                                        finalYPosition)
        }
    }

    func slideOut() {
        let initialYPosition = getInitialYPosition(configuration)

        Animator.animateOut(banner, initialYPosition)
    }

}

