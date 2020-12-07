//
//  BasicConfiguration.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 07/12/2020.
//

import UIKit

public struct BasicConfiguration: ConfigurableView {
    public let duration: Duration
    public let backgroundColor: UIColor
    public let position: Position
    public let message: String
    public let height: CGFloat = 50.0

    public init(backgroundColor: UIColor,
                position: Position,
                duration: Duration,
                message: String) {
        self.backgroundColor = backgroundColor
        self.position = position
        self.message = message
        self.duration = duration
    }

}
