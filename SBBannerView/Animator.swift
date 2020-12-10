//
//  Animator.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 07/12/2020.
//

import UIKit

protocol Animatable {

    static func animateInPermenent(_ banner: UIView,
                                   _ initialYPosition: CGFloat,
                                   _ finalYPosition: CGFloat)

    static func animateInTemporary(_ banner: UIView,
                                   _ time: TimeInterval,
                                   _ initialYPosition: CGFloat,
                                   _ finalYPosition: CGFloat)

    static func animateOut(_ banner: UIView,
                           _ initialYPosition: CGFloat)

}

struct Animator: Animatable {

    static func animateInPermenent(_ banner: UIView, _ initialYPosition: CGFloat, _ finalYPosition: CGFloat) {

        banner.frame.origin.y = initialYPosition

        UIView.animate(withDuration: 1,
                       delay: 0, usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 1, options: [.curveEaseInOut], animations: {

                        banner.frame.origin.y = finalYPosition

                       }, completion: nil)
    }

    static func animateInTemporary(_ banner: UIView, _ time: TimeInterval, _ initialYPosition: CGFloat, _ finalYPosition: CGFloat) {

        banner.frame.origin.y = initialYPosition

        UIView.animate(withDuration: 1,
                       delay: 0, usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 1, options: [.curveEaseInOut], animations: {

                        banner.frame.origin.y = finalYPosition

                       }, completion: { finished in
                        DispatchQueue.global(qos: .userInteractive).asyncAfter(deadline: .now() + time) {
                            DispatchQueue.main.async {
                                animateOut(banner, initialYPosition)
                            }
                        }
                       })
    }

    static func animateOut(_ banner: UIView, _ initialYPosition: CGFloat) {


        UIView.animate(withDuration: 1.5,
                       delay: 0, usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 1, options: [.curveEaseInOut], animations: {

                        banner.frame.origin.y = initialYPosition

                       }, completion: { finished in
                        banner.removeFromSuperview()
                       })
    }


}
