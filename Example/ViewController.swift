//
//  ViewController.swift
//  Example
//
//  Created by Sanad Barjawi on 06/12/2020.
//

import UIKit
import SBBannerView
class ViewController: UIViewController {

    let basicConfiguration = BannerConfiguration(
        backgroundColor: .lightGray,
        position: .top,
        duration: .temporary(forTimer: 2),
        message: "no internet connection",
        cornerRadius: 3, width: UIScreen.main.bounds.width - 20,
        textFont: UIFont.systemFont(ofSize: 14),
        textColor: .white, height: 30, textAlignment: .center)

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showBanner(_ send: UIButton) {

        SBBannerManager.shared.slideIn(.basic(configuration: basicConfiguration))

    }

}
