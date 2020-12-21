//
//  BannerViewFactory.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 06/12/2020.
//

import UIKit

public final class SBBannerManager {

    public static let shared: SBBannerManager = SBBannerManager()

    private var banners: [Slidable] = [Slidable]()

    private init() {}

    public func slideIn(_ type: BannerViewType, shouldSlideoutPreviousBannerIfFound: Bool) {
        if shouldSlideoutPreviousBannerIfFound {
            banners.forEach{$0.slideOut()}
        }
        switch type {

        case .basic(let configuration):
            banners.append(BannerView(configuration: configuration))
        }
        banners.last?.slideIn()


    }

    public func slideOut() {
        banners.last?.slideOut()
    }

}
