//
//  RepositoryTests.swift
//  GithubViewerTests
//
//  Created by mac on 27/03/2018.
//  Copyright © 2018 GregApps. All rights reserved.
//

import XCTest
@testable import GithubViewer

class RepositoryTests: XCTestCase {
    
    var json: JSON {
        return ["id": 3081286,
        "name": "Tetris",
        "full_name": "dtrupenn/Tetris",
        "owner": [
            "login": "dtrupenn",
            "id": 872147,
            "avatar_url": "https://secure.gravatar.com/avatar/e7956084e75f239de85d3a31bc172ace?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
            "gravatar_id": "",
            "url": "https://api.github.com/users/dtrupenn",
            "received_events_url": "https://api.github.com/users/dtrupenn/received_events",
            "type": "User"
        ],
        "private": false,
        "html_url": "https://github.com/dtrupenn/Tetris",
        "description": "A C implementation of Tetris using Pennsim through LC4",
        "fork": false,
        "url": "https://api.github.com/repos/dtrupenn/Tetris",
        "created_at": "2012-01-01T00:31:50Z",
        "updated_at": "2013-01-05T17:58:47Z",
        "pushed_at": "2012-01-01T00:37:02Z",
        "homepage": "",
        "size": 524,
        "stargazers_count": 1,
        "watchers_count": 1,
        "language": "Assembly",
        "forks_count": 0,
        "open_issues_count": 0,
        "master_branch": "master",
        "default_branch": "master",
        "score": 10.309712
        ]
    }
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testResposotoryInitialization() {
        var repo: Repository?
        
        repo = Repository(json: json)
        
        XCTAssertNotNil(repo)
    }
    
    func testPerformanceExample() {
        self.measure {
            Repository(json: json)
        }
    }
    
}