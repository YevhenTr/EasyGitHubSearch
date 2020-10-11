//
//  UIView+Border.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable
    var viewBorderColor: UIColor? {
        set(color) {
            self.layer.borderColor = color?.cgColor
        }
        
        get {
            return self.layer.borderColor != nil ? UIColor(cgColor:self.layer.borderColor!) : nil
        }
    }
    
    @IBInspectable
    var viewBorderWidth: CGFloat {
        set(width) {
            self.layer.borderWidth = width
        }
        
        get {
            return self.layer.borderWidth
        }
    }
}
