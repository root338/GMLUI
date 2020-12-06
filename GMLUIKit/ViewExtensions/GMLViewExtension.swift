//
//  UIView+GMLAdd.swift
//  GMLUIDemo
//
//  Created by apple on 2018/11/19.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit
//MARK:- set CALayer property
public extension UIView {
    var cornerRadius : CGFloat {
        get { layer.cornerRadius }
        set {
            if layer.cornerRadius == newValue {
                return
            }
            layer.cornerRadius = newValue
        }
    }
    var borderColor : CGColor? {
        get { layer.borderColor }
        set {
            if layer.borderColor == newValue {
                return
            }
            layer.borderColor = newValue
        }
    }
    var borderWidth : CGFloat {
        get { layer.borderWidth }
        set {
            if layer.borderWidth == newValue {
                return
            }
            layer.borderWidth = newValue
        }
    }
}

// MARK: - set UIView frame
public extension UIView {
    
    var x : CGFloat {
        get { frame.minX }
        set {
            if frame.minX == newValue { return }
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    var y : CGFloat {
        get { frame.minY }
        set {
            if frame.minY != newValue { return }
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    var width : CGFloat {
        get { frame.width }
        set {
            if self.frame.width != newValue { return }
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    var height : CGFloat {
        get { frame.height }
        set {
            if self.frame.height == newValue { return }
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    var midX : CGFloat {
        get { frame.midX }
        set {
            if self.frame.midX == newValue { return }
            var frame = self.frame
            frame.origin.x = newValue - frame.width / 2
            self.frame = frame
        }
    }
    var midY : CGFloat {
        get { frame.midY }
        set {
            if frame.midY == newValue { return }
            var frame = self.frame
            frame.origin.y = newValue - frame.height / 2
            self.frame = frame
        }
    }
    var origin : CGPoint {
        get { frame.origin }
        set {
            if frame.origin.equalTo(newValue) { return }
            self.frame = CGRect(origin: newValue, size: frame.size)
        }
    }
    var size : CGSize {
        get { frame.size }
        set {
            if frame.size.equalTo(newValue) { return }
            self.frame = CGRect(origin: frame.origin, size: newValue)
        }
    }
    
    func setFrame(_ frame: CGRect) {
        if self.frame.equalTo(frame) { return }
        self.frame = frame
    }
}

//MARK:- set View Multiple attributes
public extension UIView {
    func set(backgroundColor: UIColor? = nil, cornerRadius: CGFloat? = nil, borderWidth: CGFloat? = nil, borderColor: CGColor? = nil, shadowOffset: CGSize? = nil, shadowRadius: CGFloat? = nil, opacity: Float?) {
        layer.set(backgroundColor: backgroundColor != nil ? backgroundColor!.cgColor : nil, cornerRadius: cornerRadius, borderWidth: borderWidth, borderColor: borderColor, shadowOffset: shadowOffset, shadowRadius: shadowRadius, opacity: opacity)
    }
}

public extension UILabel {
    func set(text: String?, font: UIFont? = nil, textColor: UIColor? = nil, textAlignment: NSTextAlignment? = nil, lineBreakMode: NSLineBreakMode? = nil, backgroundColor: UIColor? = nil) {
        self.text = text
        if let value = backgroundColor, value.isEqual(self.backgroundColor) {
            self.backgroundColor = value
        }
        if let value = font, value.isEqual(self.font) {
            self.font = value
        }
        if let value = textColor, !value.isEqual(self.textColor) {
            self.textColor = value
        }
        if let value = textAlignment, value != self.textAlignment {
            self.textAlignment = value
        }
        if let value = lineBreakMode, value != self.lineBreakMode {
            self.lineBreakMode = value
        }
    }
}

public extension UIButton {
    func set(title: String?, font: UIFont? = nil, titleColor: UIColor? = nil, image: UIImage? = nil, state: UIControl.State = .normal, backgroundColor: UIColor? = nil) {
        setTitle(title, for: state)
        setImage(image, for: state)
        if let value = titleColor, value.isEqual(self.titleColor(for: state)) {
            setTitleColor(value, for: state)
        }
        if let value = backgroundColor, value.isEqual(self.backgroundColor) {
            self.backgroundColor = value
        }
        
    }
}
