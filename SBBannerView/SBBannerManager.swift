//
//  BannerViewFactory.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 06/12/2020.
//

import UIKit

public class SBBannerManager {

    public static let shared: SBBannerManager = SBBannerManager()

    private var bannerView: Slidable?

    private init() {}

    public func slideIn(_ type: BannerViewType) {

        if bannerView != nil {
            slideOut()
        }

        switch type {

        case .basic(let configuration):

            bannerView = BasicBannerView(configuration: configuration)

        case .customized(configuration: let configuration):

            bannerView = CustomBannerView(configuration: configuration)
        }
        bannerView?.slideIn()

    }

    public func slideOut() {

        bannerView?.slideOut()
        bannerView = nil
    }

}
