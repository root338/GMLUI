//
//  GMLUIProtocol.swift
//  GMLUIDemo
//
//  Created by apple on 2020/12/6.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

public protocol GMLViewProtocol {
    
    //MARK:- UIView 属性设置
    func contentMode(_ contentMode: UIView.ContentMode) -> Self
    func backgroundColor(_ backgroundColor: UIColor) -> Self
    
    //MARK:- CALayer 设置
    func borderWidth(_ borderWidth: CGFloat) -> Self
    func borderColor(_ borderColor: UIColor) -> Self
    func cornerRadius(_ cornerRadius: CGFloat) -> Self
    func opacity(_ opacity: Float) -> Self
    func shadowOffset(_ shadowOffset: CGSize) -> Self
    func shadowRadius(_ shadowRadius: CGFloat) -> Self
}

public protocol GMLTextProtocol: GMLViewProtocol {
    func text(_ text: String?) -> Self
    func font(_ font: UIFont) -> Self
    func textColor(_ textColor: UIColor) -> Self
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self
    func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self
    func attributedText(_ attributedText: NSAttributedString?) -> Self
}

public protocol GMLControlProtocol: GMLViewProtocol {
    func contentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment) -> Self
    func contentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment) -> Self
}

public protocol GMLButtonProtocol: GMLControlProtocol, GMLTextProtocol {
    func title(_ title: String?, for state: UIControl.State) -> Self
    func titleColor(_ titleColor: UIColor?, for state: UIControl.State) -> Self
    func attributedTitle(_ attributedTitle: NSAttributedString?, for state: UIControl.State) -> Self
    
}
