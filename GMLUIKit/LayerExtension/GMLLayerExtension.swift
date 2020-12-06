//
//  GMLLayerExtension.swift
//  GMLUIDemo
//
//  Created by apple on 2020/12/6.
//  Copyright © 2020 apple. All rights reserved.
//

import QuartzCore

extension CALayer {
    func set(backgroundColor: CGColor? = nil, cornerRadius: CGFloat? = nil, borderWidth: CGFloat? = nil, borderColor: CGColor? = nil, shadowOffset: CGSize? = nil, shadowRadius: CGFloat? = nil, opacity: Float? = nil) {
        if let value = backgroundColor, value != self.backgroundColor {
            self.backgroundColor = value
        }
        if let value = cornerRadius, value != self.cornerRadius {
            self.cornerRadius = value
        }
        if let value = borderWidth, value != self.borderWidth {
            self.borderWidth = value
        }
        if let value = borderColor, value != self.borderColor {
            self.borderColor = value
        }
        if let value = shadowOffset, value != self.shadowOffset {
            self.shadowOffset = value
        }
        if let value = shadowRadius, value != self.shadowRadius {
            self.shadowRadius = value
        }
        if let value = opacity, value != self.opacity {
            self.opacity = value
        }
    }
}
