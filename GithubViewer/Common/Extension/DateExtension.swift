//
//  DateExtension.swift
//  GithubViewer
//
//  Created by mac on 27/03/2018.
//  Copyright © 2018 GregApps. All rights reserved.
//

import Foundation

extension Date {
    
    var iso8601ToString: String {
        return DateFormatterWorker.shared.string(from: self)
    }
    
}
