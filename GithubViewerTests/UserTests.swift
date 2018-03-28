//
//  UserTests.swift
//  GithubViewerTests
//
//  Created by mac on 28/03/2018.
//  Copyright © 2018 GregApps. All rights reserved.
//

import XCTest
@testable import GithubViewer

class UserTests: XCTestCase {
    
    var json: JSON {
        return [
         "login": "mojombo",
         "id": 1,
         "avatar_url": "https://secure.gravatar.com/avatar/25c7c18223fb42a4c6ae1c8db6f50f9b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
         "gravatar_id": "",
         "url": "https://api.github.com/users/mojombo",
         "html_url": "https://github.com/mojombo",
         "followers_url": "https://api.github.com/users/mojombo/followers",
         "subscriptions_url": "https://api.github.com/users/mojombo/subscriptions",
         "organizations_url": "https://api.github.com/users/mojombo/orgs",
         "repos_url": "https://api.github.com/users/mojombo/repos",
         "received_events_url": "https://api.github.com/users/mojombo/received_events",
         "type": "User",
         "score": 105.47857
        ]
    }
    
    var mainJSON: JSON  {
        return ["total_count": 12,
        "incomplete_results": false,
        "items": [[
        "login": "mojombo",
        "id": 1,
        "avatar_url": "https://secure.gravatar.com/avatar/25c7c18223fb42a4c6ae1c8db6f50f9b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
        "gravatar_id": "",
        "url": "https://api.github.com/users/mojombo",
        "html_url": "https://github.com/mojombo",
        "followers_url": "https://api.github.com/users/mojombo/followers",
        "subscriptions_url": "https://api.github.com/users/mojombo/subscriptions",
        "organizations_url": "https://api.github.com/users/mojombo/orgs",
        "repos_url": "https://api.github.com/users/mojombo/repos",
        "received_events_url": "https://api.github.com/users/mojombo/received_events",
        "type": "User",
        "score": 105.47857
        ]]]
    }
    
    
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testUserInitialization() {
        var user: User?
        
        user = User(json: json)
        
        XCTAssertNotNil(user)
    }
    
    func testGetUsersResponseParsing() {
        var responseModel: UsersResponseModel?
        
        responseModel = UsersResponseModel(json: mainJSON)
        
        XCTAssertNotNil(responseModel)
        
        XCTAssertGreaterThanOrEqual(responseModel?.users.count ?? 0, 1, "Test failed. Zero users created")
    }
}
