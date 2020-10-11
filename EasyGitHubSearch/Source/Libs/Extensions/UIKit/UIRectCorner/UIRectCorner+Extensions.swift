//
//  UIRectCorner+Extensions.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import UIKit

extension UIRectCorner {
    
    func toCornerMask() -> CACornerMask {
        var mask: CACornerMask = []
        if self.contains(.allCorners) {
            mask.formUnion(.layerMinXMinYCorner)
            mask.formUnion(.layerMaxXMinYCorner)
            mask.formUnion(.layerMaxXMaxYCorner)
            mask.formUnion(.layerMinXMaxYCorner)
        }
        if self.contains(.topLeft) {
            mask.formUnion(.layerMinXMinYCorner)
        }
        if self.contains(.topRight) {
            mask.formUnion(.layerMaxXMinYCorner)
        }
        if self.contains(.bottomRight) {
            mask.formUnion(.layerMaxXMaxYCorner)
        }
        if self.contains(.bottomLeft) {
            mask.formUnion(.layerMinXMaxYCorner)
        }
        
        return mask
    }
}
