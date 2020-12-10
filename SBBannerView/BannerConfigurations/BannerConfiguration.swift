//
//  BasicConfiguration.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 07/12/2020.
//

import UIKit

public struct BannerConfiguration: ConfigurableView {

    public let textAlignment: NSTextAlignment

    public let textColor: UIColor

    public let textFont: UIFont

    public let width: CGFloat

    public let cornerRadius: CGFloat

    public let duration: Duration

    public let backgroundColor: UIColor

    public let position: Position

    public let message: String

    public let height: CGFloat

    public init(backgroundColor: UIColor,
                position: Position,
                duration: Duration,
                message: String,
                cornerRadius: CGFloat? = nil,
                width: CGFloat? = nil,
                textFont: UIFont, textColor: UIColor, height: CGFloat? = nil, textAlignment: NSTextAlignment? = nil) {

        self.backgroundColor = backgroundColor
        self.position = position
        self.message = message
        self.duration = duration
        self.cornerRadius = cornerRadius ?? 8.0
        self.width = width ?? UIScreen.main.bounds.width - 25
        self.textColor = textColor
        self.textFont = textFont
        self.height = height ?? 50.0
        self.textAlignment = textAlignment ?? .center
    }

}
