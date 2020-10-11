//
//  UIView+Geometry.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import UIKit

extension UIView {

    public var minX: CGFloat {
        get { return self.frame.minX }
        set { self.frame = CGRect(x: newValue, y: self.minY, width: self.width, height: self.height) }
    }

    public var minY: CGFloat {
        get { return self.frame.minY }
        set { self.frame = CGRect(x: self.minX, y: newValue, width: self.width, height: self.height) }
    }
    
    public var maxX: CGFloat {
        get { return self.frame.maxX }
        set { self.minX += newValue - self.maxX }
    }
    
    public var maxY: CGFloat {
        get { return self.frame.maxY }
        set { self.minY += newValue - self.maxY }
    }

    public var width: CGFloat {
        get { return self.frame.width }
        set { self.frame = CGRect(x: self.minX, y: self.minY, width: newValue, height: self.height) }
    }

    public var height: CGFloat {
        get { return self.frame.height }
        set { self.frame = CGRect(x: self.minX, y: self.minY, width: self.width, height: newValue) }
    }
}
