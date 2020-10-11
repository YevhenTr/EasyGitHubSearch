//
//  UIViewController+Extensions.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func modalPresentation(_ isModal: Bool = true,
                           style: UIModalPresentationStyle = .fullScreen) {
        if #available(iOS 13.0, *) {
            self.isModalInPresentation = isModal
        }
        self.modalPresentationStyle = style
    }
}
