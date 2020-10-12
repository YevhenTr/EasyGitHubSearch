//
//  Networking+SearchUsers.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 12.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import Foundation

extension Networking {
    
    public func search(users query: String, page: Int, completion: @escaping Handler<Result<SearchUserResponse, Error>>) {
        
        let queryItems = [
            URLQueryItem(name: "q", value: query),
            URLQueryItem(name: "page", value: page.string),
            URLQueryItem(name: "per_page", value: Constant.perPage.string)
        ]
        let request = self.createRequest(method: .get,
                                         queryItems: queryItems,
                                         path: "/search/users")
        
        return self.send(request: request, completion: completion)
    }
}
