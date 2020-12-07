//
//  Test.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 06/12/2020.
//

import UIKit

protocol Bannerable {

    associatedtype Configuration = ConfigurableView

    var configuration: Configuration { get }

    var banner: UIView { get }

    func applyConfiguration(_ configuration: ConfigurableView)

    var gesture: SwipeGesture? { get }

    func addSwipeGesture()

}

extension Bannerable {

    func addSwipeGesture() {
        precondition(gesture != nil, "gesture is not instantiated, make sure to implement gesture in your Bannerable class/struct and assign an instance to it")
        let swipeGesture = UISwipeGestureRecognizer(target: gesture.self,
                                                    action: #selector(gesture?.gestureSwipe))
        swipeGesture.direction = (configuration as? ConfigurableView)?.position == .top ? .up : .down
        banner.addGestureRecognizer(swipeGesture)
    }
}

