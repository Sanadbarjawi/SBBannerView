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
    /**
     if let tabbarController = onWindow.rootViewController as? UITabBarController,
        tabbarController.tabBar.isHidden == false,
        tabbarController.tabBar.layer.zPosition == 0 {

         tabbarHeight = tabbarController.tabBar.bounds.size.height
         return UIScreen.main.bounds.height
             - (tabbarHeight + configuration.height + topBottomExtraPadding)
     }
     */
    func isTabbarShowing() -> Bool {
        let tabbarController = (self.rootViewController as? UITabBarController)
        return tabbarController?.tabBar.isHidden == false && tabbarController?.tabBar.layer.zPosition == 0
    }

    func getTabbarHeight() -> CGFloat {
        guard isTabbarShowing() == true else { return 0.0 }
        let tabbarController = (self.rootViewController as? UITabBarController)
        return tabbarController?.tabBar.bounds.height ?? 0.0
    }
}
