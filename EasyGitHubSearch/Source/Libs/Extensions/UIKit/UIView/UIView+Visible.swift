//
//  UIView+Visible.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import UIKit

extension UIView {
    
    var isVisible: Bool {
        get { return !self.isHidden }
        set { self.isHidden = !newValue }
    }
}

#if canImport(RxSwift)
#if canImport(RxCocoa)

import RxSwift
import RxCocoa

extension Reactive where Base: UIView {
    
    var isHidden: Observable<Bool> {
        return self.observe(Bool.self, "hidden").map { $0 ?? true }
    }
}

#endif
#endif
