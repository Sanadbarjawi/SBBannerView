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

        switch configuration.position {

            case .top: return onWindow.safeAreaInsets.top

            case .bottom:
                return UIScreen.main.bounds.height
                    - (onWindow.safeAreaInsets.bottom + configuration.height)
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
