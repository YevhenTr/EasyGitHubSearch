//
//  SignedInteger+Extensions.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import Foundation

extension SignedInteger {

    public var isEven: Bool { return (self % 2) == 0 }
    public var isOdd: Bool { return !self.isEven }
}
