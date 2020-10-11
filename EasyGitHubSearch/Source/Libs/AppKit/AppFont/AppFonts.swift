//
//  AppFonts.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import UIKit

enum Font: String {
    case helveticaBold = "HelveticaNeue-Bold"
    case helveticaLight = "HelveticaNeue-Light"
}

extension UIFont {
    convenience init?(name: Font, size: CGFloat) {
        self.init(name: name.rawValue, size: size)
    }
    
    
    class func appFont(_ type: Font, size fontSize: Float) -> UIFont {
        return UIFont(name: type.rawValue, size: CGFloat(fontSize)) ?? UIFont.systemFont(ofSize: CGFloat(fontSize))
    }
}
