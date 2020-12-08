//
//  ConfigurableView.swift
//  SBBannerView
//
//  Created by Sanad Barjawi on 06/12/2020.
//

import UIKit

public protocol ConfigurableView {

    var backgroundColor: UIColor { get }
    
    var position: Position { get }

    var duration: Duration { get }

    var message: String { get }

    var height: CGFloat { get }

    var width: CGFloat { get }

    var cornerRadius: CGFloat { get }

    var textAlignment: NSTextAlignment { get }

    var textColor: UIColor { get }

    var textFont: UIFont { get }
}

public enum Position { case
    top, bottom
}

public enum Duration { case
    perminent,
    temporary(forTimer: TimeInterval)
}
