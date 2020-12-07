//
//  CustomConfiguration.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 07/12/2020.
//

import UIKit

public struct CustomConfiguration: ConfigurableView {
    public let backgroundColor: UIColor
    public let height: CGFloat
    public let conrnerRadius: CGFloat
    public let leftRightPadding: Double
    public let position: Position
    public let duration: Duration
    public let message: String

    public init(backgroundColor: UIColor, height: CGFloat, conrnerRadius: CGFloat, leftRightPadding: Double, position: Position, duration: Duration, message: String) {
        self.backgroundColor = backgroundColor
        self.height = height
        self.conrnerRadius = conrnerRadius
        self.leftRightPadding = leftRightPadding
        self.position = position
        self.duration = duration
        self.message = message
    }

}
