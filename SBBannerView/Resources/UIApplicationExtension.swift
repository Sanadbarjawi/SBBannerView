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

extension UIWindow {

    func isTabbarShowing() -> Bool {
        let tabbarController = (self.rootViewController as? UITabBarController)
        return tabbarController?.tabBar.isHidden == false && tabbarController?.tabBar.layer.zPosition == 0
    }

    func getTabbarHeight() -> CGFloat {
        guard isTabbarShowing() == true else { return 0.0 }
        let tabbarController = (self.rootViewController as? UITabBarController)
        return tabbarController?.tabBar.bounds.height ?? 0.0
    }

    func isNavBarShowing() -> Bool {
        if isTabbarShowing() {
           let navbarController = ((self.rootViewController as? UITabBarController)?.selectedViewController) as? UINavigationController
            return navbarController?.navigationBar.isHidden == false && navbarController?.navigationBar.layer.zPosition == 0

        } else {
            let navbarController = (self.rootViewController)?.navigationController
            return navbarController?.navigationBar.isHidden == false && navbarController?.navigationBar.layer.zPosition == 0
        }

    }

    func getNavbarHeight() -> CGFloat {
        guard isNavBarShowing() == true else { return 0.0 }

        if isTabbarShowing() {
            let navbarController = ((self.rootViewController as? UITabBarController)?.selectedViewController) as? UINavigationController
            return navbarController?.navigationBar.bounds.height ?? 0.0
        } else {
            let navbarController = (self.rootViewController as? UINavigationController)
            return navbarController?.navigationBar.bounds.height ?? 0.0
        }

    }
}
