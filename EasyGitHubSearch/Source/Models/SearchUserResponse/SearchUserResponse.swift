//
//  SearchUserResponse.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 12.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import Foundation

/*
 {
   "total_count": 12,
   "incomplete_results": false,
   "items": [
     {
       "login": "mojombo",
       "id": 1,
       "node_id": "MDQ6VXNlcjE=",
       "avatar_url": "https://secure.gravatar.com/avatar/25c7c18223fb42a4c6ae1c8db6f50f9b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
       "gravatar_id": "",
       "url": "https://api.github.com/users/mojombo",
       "html_url": "https://github.com/mojombo",
       "followers_url": "https://api.github.com/users/mojombo/followers",
       "subscriptions_url": "https://api.github.com/users/mojombo/subscriptions",
       "organizations_url": "https://api.github.com/users/mojombo/orgs",
       "repos_url": "https://api.github.com/users/mojombo/repos",
       "received_events_url": "https://api.github.com/users/mojombo/received_events",
       "type": "User",
       "score": 1.0
     }
   ]
 }
 */

enum GitUserType: String {
    
    case user = "User"
    case organization = "Organization"
    case unknown
    
    init(_ string: String) {
        switch string {
        case GitUserType.user.rawValue:
            self = .user
        case GitUserType.organization.rawValue:
            self = .organization
        default:
            self = .unknown
        }
    }
}

struct SearchUserResponse: Codable {
    
    // MARK: - Properties
       
       let count: Int
       let items: [UserItem]
       
       // MARK: - Codable
       
       enum CodingKeys: String, CodingKey {
           case count = "total_count"
           case items
       }
}

struct UserItem: Codable {
    
    // MARK: - Properties

    let id: Int
    let login: String
    let avatarURL: String
    let userURL: String
    let reposURL: String
    let type: String
    let score: Float
    
    var userType: GitUserType { GitUserType(self.type) }
    
    // MARK: - Codable
    
    enum CodingKeys: String, CodingKey {
        case id, login
        case avatarURL = "avatar_url"
        case userURL = "url"
        case reposURL = "repos_url"
        case type
        case score
    }
}
