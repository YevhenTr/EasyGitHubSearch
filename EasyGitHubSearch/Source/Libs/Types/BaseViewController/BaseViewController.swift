//
//  BaseViewController.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 12.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    // MARK: - Properties
    
    public private(set) var networking: Networking?

    // MARK: - Init and Deinit
    
    init(networking: Networking? = nil) {
        super.init(nibName: nil, bundle: nil)
        
        self.networking = networking
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
