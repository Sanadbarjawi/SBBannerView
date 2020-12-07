//
//  Gesture.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 08/12/2020.
//

import UIKit

class SwipeGesture {

    let configuration: ConfigurableView
    let view: Slidable

    init(on view: Slidable, _ configuration: ConfigurableView) {
        self.configuration = configuration
        self.view = view
    }

    @objc func gestureSwipe(_ sender: UISwipeGestureRecognizer) {

        switch configuration.position {
        case .top:
            switch sender.direction {
            case .up: view.slideOut()
            default: break
            }
        case .bottom:
            switch sender.direction {
            case .down: view.slideOut()
            default: break
            }
        }

    }
}
