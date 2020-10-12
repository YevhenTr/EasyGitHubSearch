//
//  GitHubAPI.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 12.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import Foundation

struct GitHubAPI: NetworkAPI {
    
    // MARK: - Subtypes
    
    private enum Constant {
        
        static let token = "Bearer eyJhbGciOiJSUzI1NiJ9.eyJpYXQiOjE2MDI0OTM2MTAsImV4cCI6MTYwMjQ5NDIxMCwiaXNzIjo4NDQ0M30.C6aINcmivIY6YM6DOhiKtAXa0XbH1nipx2gY9EHGXtRuK2pt-2o3F1flofgm9DcZeaZ1fm91XYOeJNzw9KmKlVwT4egTMNUFJ69GqXlgdNJdt6M4zCmI2D6sBzvtCgxrKoBvK2h5wAgo5ZL2yBZ2fVvMcFznzqQnbuCwKMlfzHOvvTJFdFt9HK21rZ7EUXtsTKeVA4eulgmXVkcwC0EGrRjxxFIted9IM9X8gj6jKRCh82C_sAS2BR1VAeu0ne-i5VqbJZ809UtMQgea0YYN-hHXUBf4_ny7uMu4fMKZLgLUevifsJHp2vqLBYHcEZN2xu5aSCxMoKjqHA8Y_HXUEQ"
        static let scheme = "https"
        static let host = "api.github.com"
        static let path = ""
    }
    
    // MARK: - Properties
    
    let defaultURLComponents: URLComponents
    let defaultURLQueryItems: [URLQueryItem]
    let defaultHTTPHeader: [String: String]
    
    // MARK: - Init and Deinit
    
    init() {
        var components = URLComponents()
        components.scheme = Constant.scheme
        components.host = Constant.host
        
        self.defaultURLComponents = components
        self.defaultURLQueryItems = [
            URLQueryItem(name: "Authorization", value: Constant.token),
        ]
        
        self.defaultHTTPHeader = [
            "Content-Type" : "application/vnd.github.v3+json"
        ]
    }
}
