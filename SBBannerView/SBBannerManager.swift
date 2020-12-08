//
//  BannerViewFactory.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 06/12/2020.
//

import UIKit

public class SBBannerManager {

    public static let shared: SBBannerManager = SBBannerManager()

    var currentBanner: Slidable?

    private init() {}

    public func slideIn(_ type: BannerViewType) {

        switch type {

        case .basic(let configuration):
            currentBanner = BasicBannerView(configuration: configuration)

        case .customized(configuration: _): break
        }

        currentBanner?.slideIn()

    }

    public func slideOut() {
        currentBanner?.slideOut()
    }

}
