//
//  UIViewTools.swift
//  HelperKit
//
//  Created by Yulia Novikova on 5/7/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import UIKit

public extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        set { clipsToBounds = true; layer.cornerRadius = newValue }
        get { return layer.cornerRadius }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        set { layer.borderWidth = newValue }
        get { return layer.borderWidth }
    }
    
    @IBInspectable var borderColor: UIColor {
        set { layer.borderColor = newValue.cgColor }
        get { return UIColor.clear }
    }
    
    var viewController: UIViewController? {
        var controller: UIResponder? = self.next
        while controller != nil {
            if let controller = controller as? UIViewController { return controller }
            controller = controller?.next
        }
        return nil
    }
    
    func removeAllSubviews() {
        subviews.forEach { $0.removeFromSuperview() }
    }
    
    func showAnimated() {
        UIView.animate(withDuration: 0.3) {
            self.isHidden = false
        }
    }
    
    func hideAnimated() {
        UIView.animate(withDuration: 0.3) {
            self.isHidden = true
        }
    }
    
    func rotateView(_ angle: CGFloat) {
        UIView.animate(withDuration: 0.4) {
            self.transform = CGAffineTransform(rotationAngle: angle * .pi / 180)
        }
    }
}
