//
//  SlidableViewProtocol.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 06/12/2020.
//

import UIKit

protocol Slidable {
    func slideIn()
    func slideOut()
    var onWindow: UIWindow { get }
}

extension Slidable {

    func getFinalYPosition(_ configuration: ConfigurableView) -> CGFloat {
        let topBottomExtraPadding: CGFloat = 8.0 //
        switch configuration.position {

        case .top: return onWindow.safeAreaInsets.top

        case .bottom:
            if onWindow.isTabbarShowing() {
                return UIScreen.main.bounds.height
                    - (onWindow.getTabbarHeight() + configuration.height + topBottomExtraPadding)
            } else {
                return UIScreen.main.bounds.height
                    - (onWindow.safeAreaInsets.bottom + configuration.height + topBottomExtraPadding)
            }

        }
    }

    func getInitialYPosition(_ configuration: ConfigurableView) -> CGFloat {

        switch configuration.position {
        case .top:
            return -(configuration.height + onWindow.safeAreaInsets.top)

        case .bottom:
            return UIScreen.main.bounds.height + configuration.height
        }
    }
}
