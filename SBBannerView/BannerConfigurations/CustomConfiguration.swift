//
//  CustomConfiguration.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 07/12/2020.
//

import UIKit

public struct CustomConfiguration: ConfigurableView {

    public var width: CGFloat
    
    public var cornerRadius: CGFloat
    
    public let backgroundColor: UIColor

    public let height: CGFloat

    public let position: Position

    public let duration: Duration

    public let message: String

    public init(backgroundColor: UIColor, height: CGFloat, cornerRadius: CGFloat, position: Position, duration: Duration, message: String, width: CGFloat) {
        self.backgroundColor = backgroundColor
        self.height = height
        self.cornerRadius = cornerRadius
        self.position = position
        self.duration = duration
        self.message = message
        self.width = width
    }

}
