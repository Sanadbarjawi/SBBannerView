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

}


