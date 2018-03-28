//
//  DateFormatterWorker.swift
//  GithubViewer
//
//  Created by mac on 27/03/2018.
//  Copyright © 2018 GregApps. All rights reserved.
//

import Foundation

class DateFormatterWorker{
    
    static let shared = DateFormatterWorker()
    private init() {}
    
    private var formatter = ISO8601DateFormatter()
    
    func date(from string: String) -> Date? {
        return formatter.date(from: string)
    }
    
    func string(from date: Date) -> String {
        return formatter.string(from: date)
    }
}


