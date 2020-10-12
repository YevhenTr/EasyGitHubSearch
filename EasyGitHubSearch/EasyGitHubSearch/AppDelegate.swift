//
//  AppDelegate.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Properties
    
    let networking = Networking(api: GitHubAPI())
    
    var window: UIWindow?

    // MARK: - Public
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UserListViewController(networking: self.networking)
        window.makeKeyAndVisible()
        
        self.window = window
        
        return true
    }
}

