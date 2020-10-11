//
//  UIView+RoundedCorners.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import UIKit

extension UIView {

    func roundTop(cornerRadius: CGFloat = 20) {
        let path = UIBezierPath(roundedRect: self.bounds,
                                byRoundingCorners: [.topRight, .topLeft],
                                cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        
        let layer = CAShapeLayer()
        layer.frame = self.bounds
        layer.path = path.cgPath
        self.layer.mask = layer
    }
    
    func roundBottom(cornerRadius: CGFloat = 20) {
        let path = UIBezierPath(roundedRect: self.bounds,
                                byRoundingCorners: [.bottomRight, .bottomLeft],
                                cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        
        let layer = CAShapeLayer()
        layer.frame = self.bounds
        layer.path = path.cgPath
        self.layer.mask = layer
    }
    
    func resetRoundedCorners() {
        self.roundTop(cornerRadius: 0)
        self.roundBottom(cornerRadius: 0)
        self.viewCornerRadius = 0
    }
}
