//
//  UIView+CornerRadius.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable
    var viewCornerRadius: CGFloat {
        set(radius) {
            self.layer.cornerRadius = radius
            self.layer.masksToBounds = true
        }
        
        get {
            return self.layer.cornerRadius
        }
    }
    
    func setCornerRadius(color: UIColor, radius: CGFloat, forCorners: UIRectCorner) {
        if #available(iOS 11, *) {
            self.layer.cornerRadius = radius
            self.layer.maskedCorners = forCorners.toCornerMask()
        } else {
            let layer = CALayer()
            let mask = CAShapeLayer()
            let path = UIBezierPath(roundedRect: self.bounds,
                                    byRoundingCorners: forCorners,
                                    cornerRadii: CGSize(width: radius, height: radius)).cgPath
            layer.bounds = self.bounds
            mask.path = path
            layer.mask = mask
            layer.backgroundColor = color.cgColor
            
            if let image = UIImage.image(with: layer) {
                let backgroundColor = UIColor(patternImage: image)
                self.backgroundColor = backgroundColor
            }
        }
    }
    
    func setCornerRadius(_ radius: CGFloat, forCorners corners: UIRectCorner) {
        if corners.isEmpty {
            self.layer.mask = nil
        } else {
            let mask = CAShapeLayer()
            let path = UIBezierPath(roundedRect: self.bounds,
                                    byRoundingCorners: corners,
                                    cornerRadii: CGSize(width: radius, height: radius)).cgPath
            mask.path = path
            self.layer.mask = mask
        }
    }
}
