//
//  AppColors.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import UIKit

enum AppColor {
    
    public static var mainBackground: UIColor {
        if #available(iOS 13, *) {
            return .systemBackground
        }
        
        return .white
        
//        return #available(iOS13, #) ? .systemBackground : .white
    }
    
    public static var mainText: UIColor {
        if #available(iOS 13, *) {
            return .label
        }
        
        return .black
    }
}

enum AppColorName: String {

    //  hex color example
    case purpleDark = "#492584"
    case tangerine = "#FF998A"
}

extension UIColor {
    convenience init(name: AppColorName, alpha: CGFloat? = nil) {
        self.init(name.rawValue, alpha: alpha)!
    }
    
    static var purpleDark: UIColor { return UIColor(name: .purpleDark) }
    static var tangerine: UIColor { return UIColor(name: .tangerine) }
}
