//
//  NSObjectProtocolExtension.swift
//  GithubViewer
//
//  Created by mac on 27/03/2018.
//  Copyright © 2018 GregApps. All rights reserved.
//

import Foundation

extension NSObjectProtocol {
    
    static var name: String {
        return String(describing: self.self)
    }
    
}
