//
//  String+Extensions.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import Foundation

extension String {
    
    var url: URL? { return URL(string: self) }
    var fileURL: URL? { return URL(fileURLWithPath: self) }
    var int: Int? { return Int(self) }
    var pathExtension: String { return (self as NSString).pathExtension }
}

extension Substring {
    
    var int: Int? { return Int(self) }
    var string: String { return String(self) }
}
