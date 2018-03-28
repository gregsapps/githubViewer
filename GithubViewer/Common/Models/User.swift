//
//  User.swift
//  GithubViewer
//
//  Created by mac on 28/03/2018.
//  Copyright © 2018 GregApps. All rights reserved.
//

import Foundation


class User {
    
    let login: String
    let id: Int
    let avatarUrl: URL
    let apiUrl: URL
    let htmlUrl: URL
    let reposUrl: URL
    let score: Double
    
    init?(json: JSON) {
        guard
            let login = json["login"] as? String,
            let id = json["id"] as? Int,
            let avatarUrlString = json["avatar_url"] as? String,
            let apiUrlString = json["url"] as? String,
            let htmlUrlString = json["html_url"] as? String,
            let reposUrlString = json["repos_url"] as? String,
            let score = json["score"] as? Double,
            
            let avatarUrl = URL(string: avatarUrlString),
            let apiUrl = URL(string: apiUrlString),
            let htmlUrl = URL(string: htmlUrlString),
            let reposUrl = URL(string: reposUrlString)
        else {
            return nil
        }
        
        self.login = login
        self.id = id
        self.avatarUrl = avatarUrl
        self.score = score
        self.apiUrl = apiUrl
        self.htmlUrl = htmlUrl
        self.reposUrl = reposUrl
    }
}

struct UsersResponseModel {
    let totalCount: Int
    let users: [User]
    
    init?(json: JSON) {
        guard
            let totalCount = json["total_count"] as? Int,
            let arrayOfUsersJSON = json["items"] as? [JSON]
        else {
            return nil
        }
        self.users = arrayOfUsersJSON.flatMap { User(json: $0) }
        self.totalCount = totalCount
    }
}
