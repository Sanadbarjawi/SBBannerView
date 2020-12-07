//
//  BasicBanner.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 06/12/2020.
//

import UIKit


public struct BasicBannerView: Bannerable, Slidable {

    let banner: UIView = UIView()

    let configuration: BasicConfiguration

    let onWindow: UIWindow = UIApplication.shared.getKeyWindow()!

    public init(configuration: BasicConfiguration) {
        self.configuration = configuration
        applyConfiguration(configuration)
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
            animateInTemporary(for: time, initialYPosition, finalYPosition)
            
        case .perminent:
            animateInPermenent(initialYPosition, finalYPosition)
        }
    }

    fileprivate func animateInPermenent(_ initialYPosition: CGFloat,
                                        _ finalYPosition: CGFloat) {

        banner.frame.origin.y = initialYPosition

        UIView.animate(withDuration: 1,
                       delay: 0, usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 1, options: [.curveEaseInOut], animations: {

                        banner.frame.origin.y = finalYPosition

                       }, completion: nil)
    }

    fileprivate func animateInTemporary(for timeInterval: TimeInterval,
                                        _ initialYPosition: CGFloat,
                                        _ finalYPosition: CGFloat) {
        
        banner.frame.origin.y = initialYPosition
        
        UIView.animate(withDuration: 1,
                       delay: 0, usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 1, options: [.curveEaseInOut], animations: {
                        
                        banner.frame.origin.y = finalYPosition
                        
                       }, completion: { finished in
                        DispatchQueue.global(qos: .userInteractive).asyncAfter(deadline: .now() + timeInterval) {
                            DispatchQueue.main.async {
                                slideOut()
                            }
                        }
                       })
    }

    func slideOut() {
        
        let initialYPosition = getInitialYPosition(configuration)

        UIView.animate(withDuration: 1.5,
                       delay: 0, usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 1, options: [.curveEaseInOut], animations: {

                        banner.frame.origin.y = initialYPosition

                       }, completion: nil)
    }

}

