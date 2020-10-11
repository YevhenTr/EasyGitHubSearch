//
//  Array+Extensions.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import Foundation

extension Array {
    
    func object(at index: Int) -> Element? {
        return index < self.count ? self[index] : nil
    }
}
