//
//  ViewController.swift
//  Example
//
//  Created by Sanad Barjawi on 06/12/2020.
//

import UIKit
import SBBannerView
class ViewController: UIViewController {
    let basicConfiguration = BasicConfiguration(backgroundColor: .blue, position: .bottom, duration: .temporary(forTimer: 15), message: "")

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }

    @IBAction func testTap(_ send: UIButton) {

        SBBannerManager.shared.slideIn(.basic(configuration: basicConfiguration))

    }

}

