//
//  Repository.swift
//  GithubViewer
//
//  Created by mac on 27/03/2018.
//  Copyright © 2018 GregApps. All rights reserved.
//

import Foundation


class Repository {
    let id: Int
    let name: String
    let fullName: String
    
    let isPrivate: Bool
    let htmlUrl: URL
    let apiUrl: URL
    let description: String
    
    let dateOfCreation: Date
    let dateOfUpdating: Date
    let size : Int
    let language : String
    let score : Double
    
    
    init?(json: JSON) {
        guard
            let id = json["id"] as? Int,
            let name = json["name"] as? String,
            let fullName = json["full_name"] as? String,
            let isPrivate = json["private"] as? Bool,
            let htmlUrlString = json["html_url"] as? String,
            let apiUrlString = json["url"] as? String,
            let description = json["description"] as? String,
        
            let dateOfCreationString = json["created_at"] as? String,
            let dateOfUpdatingString = json["updated_at"] as? String,
            let size = json["size"] as? Int,
            let language = json["language"] as? String,
            let score = json["score"] as? Double,
 
            let dateOfCreation = dateOfCreationString.iso8601 ,
            let dateOfUpdating = dateOfUpdatingString.iso8601,
        
            let htmlUrl = URL(string: htmlUrlString),
            let apiUrl = URL(string: apiUrlString)
            
        else {
            return nil
        }
        
        
        self.id = id
        self.name = name
        self.fullName = fullName
        self.isPrivate = isPrivate
        self.htmlUrl = htmlUrl
        self.apiUrl = apiUrl
        self.description = description
        
        self.dateOfCreation = dateOfCreation
        self.dateOfUpdating = dateOfUpdating
        
        self.size = size
        self.language = language
        self.score = score
        
    }
}
