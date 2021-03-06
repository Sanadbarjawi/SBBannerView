//
//  BasicBanner.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 06/12/2020.
//

import UIKit

public struct BannerView: Bannerable, Slidable {

    var gesture: SwipeGesture?

    let banner: UIView

    let configuration: BannerConfiguration

    let onWindow: UIWindow = UIApplication.shared.getKeyWindow()!

    public init(configuration: BannerConfiguration) {
        self.configuration = configuration
        self.banner = UIView()
        self.gesture = SwipeGesture(on: self, configuration)

        applyConfiguration(configuration)
        addSwipeGesture()
    }

    func applyConfiguration(_ configuration: ConfigurableView) {
        if let configuration = configuration as? BannerConfiguration {
            banner.backgroundColor = configuration.backgroundColor
            banner.frame = CGRect(x: 0, y: 0,
                                  width: configuration.width,
                                  height: configuration.height)
            banner.layer.cornerRadius = configuration.cornerRadius
            banner.center = onWindow.center
        }
    }

    fileprivate func configureBanner() {
        let titleLabel = UILabel()
        titleLabel.numberOfLines = 1
        titleLabel.text = configuration.message
        titleLabel.textColor = configuration.textColor
        titleLabel.font = configuration.textFont
        titleLabel.textAlignment = configuration.textAlignment

        let sv = UIStackView(arrangedSubviews: [titleLabel])
        sv.axis = .horizontal
        sv.translatesAutoresizingMaskIntoConstraints = false
        banner.addSubview(sv)

        sv.topAnchor.constraint(
            equalTo: banner.topAnchor, constant: 8
        ).isActive = true
        sv.bottomAnchor.constraint(
            equalTo: banner.bottomAnchor, constant: -8
        ).isActive = true
        sv.leftAnchor.constraint(
            equalTo: banner.leftAnchor, constant: 8
        ).isActive = true
        sv.rightAnchor.constraint(
            equalTo: banner.rightAnchor, constant: -8
        ).isActive = true

        onWindow.addSubview(banner)
    }

    func slideIn() {
        configureBanner()

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

