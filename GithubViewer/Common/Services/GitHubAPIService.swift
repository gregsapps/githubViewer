//
//  GitHubAPIService.swift
//  GithubViewer
//
//  Created by mac on 28/03/2018.
//  Copyright © 2018 GregApps. All rights reserved.
//

import Alamofire

class GitHubAPIService: NSObject {
    
    private let manager: SessionManager = {
        let manager = SessionManager()
        return manager
    }()
    
    func getUsers(_ request: Router, callback: @escaping([User])->()) {
        
        manager.request(request).responseJSON { response in
            print(response.result.value)
            if let result = response.result.value as? JSON {
                
            } else if let error = response.error {
                print(error)
            } else {
                // unknown error
            }
        }
    }
    
}

