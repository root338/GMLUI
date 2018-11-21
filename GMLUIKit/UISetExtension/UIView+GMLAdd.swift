//
//  UIView+GMLAdd.swift
//  GMLUIDemo
//
//  Created by apple on 2018/11/19.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

// MARK: - 快捷设置 UIView 视图中 CALayer 的属性
extension UIView {
    
    var gml_cornerRadius : CGFloat{
        set {
            self.layer.cornerRadius = newValue
        }
        get {
            return self.layer.cornerRadius
        }
    }
    var gml_borderColor : CGColor? {
        get {
            return self.layer.borderColor
        }
        set {
            self.layer.borderColor = newValue
        }
    }
    var gml_borderWidth : CGFloat {
        get {
            return self.layer.borderWidth
        }
        set {
            self.layer.borderWidth = newValue
        }
    }
    
    func gml_set(borderColor: UIColor?, borderWidth: CGFloat) {
        let layer = self.layer
        
        layer.borderColor = borderColor?.cgColor
        if layer.borderWidth != borderWidth {
            layer.borderWidth = borderWidth
        }
    }
    
    func gml_set(borderColor: UIColor?, borderWidth: CGFloat, cornerRadius: CGFloat) {
        
        gml_set(borderColor: borderColor, borderWidth: borderWidth)
        let layer = self.layer
        if layer.cornerRadius != cornerRadius {
            layer.cornerRadius = cornerRadius
        }
    }
    
}

// MARK: - 设置 UIView 自身的属性
extension UIView {
    
    var gml_x : CGFloat {
        get {
            return self.frame.minX
        }
        set {
            if self.frame.minX != newValue {
                var frame = self.frame
                frame.origin.x = newValue
                self.frame = frame
            }
        }
    }
    var gml_y : CGFloat {
        get {
            return self.frame.minY
        }
        set {
            if self.frame.minY != newValue {
                var frame = self.frame
                frame.origin.y = newValue
                self.frame = frame
            }
        }
    }
    var gml_width : CGFloat {
        get {
            return self.frame.width
        }
        set {
            if self.frame.width != newValue {
                var frame = self.frame
                frame.size.width = newValue
                self.frame = frame
            }
        }
    }
    var gml_height : CGFloat {
        get {
            return self.frame.height
        }
        set {
            if self.frame.height != newValue {
                var frame = self.frame
                frame.size.height = newValue
                self.frame = frame
            }
        }
    }
    var gml_midX : CGFloat {
        get {
            return self.frame.midX
        }
        set {
            gml_center = .init(x: newValue, y: self.frame.midY)
        }
    }
    var gml_midY : CGFloat {
        get {
            return self.frame.midY
        }
        set {
            gml_center = .init(x: self.frame.midX, y: newValue)
        }
    }
    var gml_origin : CGPoint {
        get {
            return self.frame.origin
        }
        set {
            if !self.frame.origin.equalTo(newValue) {
                self.frame = CGRect.init(origin: newValue, size: self.frame.size)
            }
        }
    }
    var gml_center : CGPoint {
        get {
            return self.center
        }
        set {
            let frame = CGRect.init(origin: .init(x: newValue.x - self.frame.size.width / 2, y: newValue.y - self.frame.size.height / 2), size: self.frame.size)
            if !self.frame.equalTo(frame) {
                self.frame = frame
            }
        }
    }
    var gml_size : CGSize {
        get {
            return self.frame.size
        }
        set {
            if !self.frame.size.equalTo(newValue) {
                self.frame = CGRect.init(origin: self.frame.origin, size: newValue)
            }
        }
    }
    var gml_frame : CGRect {
        set {
            if !newValue.equalTo(self.frame) {
                self.frame = newValue
            }
        }
        get {
            return self.frame
        }
    }
}
