//
//  StringExtension.swift
//  GithubViewer
//
//  Created by mac on 27/03/2018.
//  Copyright © 2018 GregApps. All rights reserved.
//

import Foundation

extension String {
    
    var iso8601: Date? {
        return DateFormatterWorker.shared.date(from: self)
    }

}
