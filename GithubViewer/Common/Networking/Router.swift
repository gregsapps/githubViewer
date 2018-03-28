//
//  Router.swift
//  GithubViewer
//
//  Created by mac on 28/03/2018.
//  Copyright © 2018 GregApps. All rights reserved.
//

import Alamofire


enum Router: URLRequestConvertible {
    
    case getUsers(Parameters)
    case getRepositories(Parameters)
    
    static let baseApiURL = URL(string: "https://api.github.com")!
    
    private var method: HTTPMethod {
        switch self {
        case .getUsers: return .get
        case .getRepositories: return .get
        }
    }
    
    private var path: String {
        switch self {
        case .getUsers: return "/search/users"
        case .getRepositories: return "/search/repositories"
        }
    }
    
    
    
    func asURLRequest() throws -> URLRequest {
        var urlRequest = URLRequest(url: Router.baseApiURL.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        
        switch self {
        case .getUsers(let parameters):
            urlRequest = try URLEncoding.queryString.encode(urlRequest, with: parameters)
        case .getRepositories(let parameters):
            urlRequest = try URLEncoding.queryString.encode(urlRequest, with: parameters)
        }
        
        return urlRequest
    }
    
}
