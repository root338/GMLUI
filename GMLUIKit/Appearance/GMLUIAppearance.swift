//
//  GMLUIAppearance.swift
//  GMLUIDemo
//
//  Created by apple on 2020/12/6.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

extension UIView : GMLViewProtocol {
    public func contentMode(_ contentMode: ContentMode) -> Self {
        if self.contentMode != contentMode {
            self.contentMode = contentMode
        }
        return self
    }
    
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        if let bgColor = self.backgroundColor, bgColor.isEqual(backgroundColor) { return self }
        self.backgroundColor = backgroundColor
        return self
    }
    
    public func borderWidth(_ borderWidth: CGFloat) -> Self {
        if layer.borderWidth == borderWidth { return self }
        layer.borderWidth = borderWidth
        return self
    }
    
    public func borderColor(_ borderColor: UIColor) -> Self {
        if let mColor = layer.borderColor, mColor == borderColor.cgColor { return self }
        layer.borderColor = borderColor.cgColor
        return self
    }
    
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        if layer.cornerRadius == cornerRadius { return self }
        layer.cornerRadius = cornerRadius
        return self
    }
    
    public func opacity(_ opacity: Float) -> Self {
        if layer.opacity == opacity { return self }
        layer.opacity = opacity
        return self
    }
    
    public func shadowOffset(_ shadowOffset: CGSize) -> Self {
        if layer.shadowOffset == shadowOffset { return self }
        layer.shadowOffset = shadowOffset
        return self
    }
    
    public func shadowRadius(_ shadowRadius: CGFloat) -> Self {
        if layer.shadowRadius == shadowRadius { return self }
        layer.shadowRadius = shadowRadius
        return self
    }
    
    
}

extension UILabel: GMLTextProtocol {
    public func text(_ text: String?) -> Self {
        if self.text == text { return self }
        self.text = text
        return self
    }
    
    public func font(_ font: UIFont) -> Self {
        if font.isEqual(self.font) { return self }
        self.font = font
        return self
    }
    
    public func textColor(_ textColor: UIColor) -> Self {
        if textColor.isEqual(self.textColor) { return self }
        self.textColor = textColor
        return self
    }
    
    public func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        if textAlignment == self.textAlignment { return self }
        self.textAlignment = textAlignment
        return self
    }
    
    public func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        if self.lineBreakMode == lineBreakMode { return self }
        self.lineBreakMode = lineBreakMode
        return self
    }
    
    public func attributedText(_ attributedText: NSAttributedString?) -> Self {
        if attributedText == self.attributedText { return self }
        if let att = self.attributedText, att.isEqual(attributedText) { return self }
        self.attributedText = attributedText
        return self
    }
}

extension UIControl: GMLControlProtocol {
    public func contentVerticalAlignment(_ contentVerticalAlignment: ContentVerticalAlignment) -> Self {
        if self.contentVerticalAlignment != contentVerticalAlignment {
            self.contentVerticalAlignment = contentVerticalAlignment
        }
        return self
    }
    public func contentHorizontalAlignment(_ contentHorizontalAlignment: ContentHorizontalAlignment) -> Self {
        if self.contentHorizontalAlignment != contentHorizontalAlignment {
            self.contentHorizontalAlignment = contentHorizontalAlignment
        }
        return self
    }
}

extension UIButton: GMLButtonProtocol {
    public func title(_ title: String?, for state: UIControl.State) -> Self {
        let mTitle = self.title(for: state)
        if mTitle == title { return self }
        setTitle(title, for: state)
        return self
    }
    
    public func titleColor(_ titleColor: UIColor?, for state: UIControl.State) -> Self {
        let mColor = self.titleColor(for: state)
        if mColor == titleColor { return self }
        setTitleColor(titleColor, for: state)
        return self
    }
    
    public func attributedTitle(_ attributedTitle: NSAttributedString?, for state: UIControl.State) -> Self {
        let mAttributedTitle = self.attributedTitle(for: state)
        if mAttributedTitle == mAttributedTitle { return self }
        setAttributedTitle(mAttributedTitle, for: state)
        return self
    }
    
    public func text(_ text: String?) -> Self {
        let mTitle = self.title(for: .normal)
        if mTitle == text { return self }
        setTitle(text, for: .normal)
        return self
    }
    
    public func font(_ font: UIFont) -> Self {
        if let titleLabel = self.titleLabel, !font.isEqual(titleLabel) {
            titleLabel.font = font
        }
        return self
    }
    
    public func textColor(_ textColor: UIColor) -> Self {
        let mColor = self.titleColor(for: .normal)
        if mColor == textColor { return self }
        setTitleColor(textColor, for: .normal)
        return self
    }
    
    public func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        if let titleLabel = self.titleLabel, titleLabel.textAlignment != textAlignment {
            titleLabel.textAlignment = textAlignment
        }
        return self
    }
    
    public func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        if let titleLabel = self.titleLabel, titleLabel.lineBreakMode != lineBreakMode {
            titleLabel.lineBreakMode = lineBreakMode
        }
        return self
    }
    
    public func attributedText(_ attributedText: NSAttributedString?) -> Self {
        let mAttributedTitle = self.attributedTitle(for: .normal)
        if mAttributedTitle == mAttributedTitle { return self }
        setAttributedTitle(mAttributedTitle, for: .normal)
        return self
    }
    
    
}
