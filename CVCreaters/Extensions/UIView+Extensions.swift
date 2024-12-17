//
//  UIView+Extensions.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 17/12/2024.
//

import UIKit

extension UIView {
    func shake(){
        let horizontal: CGFloat = 5
        let verticaly: CGFloat = 0
        
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = CGPoint(x: center.x - horizontal,
                                      y: center.y - verticaly)
        animation.toValue = CGPoint(x: center.x + horizontal,
                                    y: center.y + verticaly)
        layer.add(animation, forKey: "position")
    }
}
