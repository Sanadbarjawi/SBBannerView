//
//  UIApplicationExtension.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 07/12/2020.
//

import UIKit

extension UIApplication {
    func getKeyWindow() -> UIWindow? {
        var keyWindow: UIWindow?

        if #available(iOS 13.0, *) {

            if let sceneKeyWindow = UIApplication.shared.connectedScenes
                .map({$0 as? UIWindowScene})
                .compactMap({$0})
                .first?.windows.first {
                keyWindow = sceneKeyWindow
            } else {
                keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
            }
        } else {
            // Fallback on earlier versions
            keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        }
        return keyWindow
    }
}
