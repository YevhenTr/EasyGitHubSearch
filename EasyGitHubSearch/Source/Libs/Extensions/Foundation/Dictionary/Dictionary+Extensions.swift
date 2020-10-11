//
//  Dictionary+Extensions.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import Foundation

extension Dictionary {

    var allKeys: [Key] { Array(self.keys) }
    
    var allValues: [Value] { Array(self.values) }
    
    func toJSON() -> Data? {
        do {
            return try JSONSerialization.data(withJSONObject: self, options: .prettyPrinted)
        } catch {
            print(error)
        }
        
        return nil
    }
}
