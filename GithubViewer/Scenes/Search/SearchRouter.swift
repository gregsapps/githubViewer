//
//  SearchRouter.swift
//  GithubViewer
//
//  Created by mac on 10/03/2018.
//  Copyright (c) 2018 GregApps. All rights reserved.
//

import Foundation
import UIKit
protocol SearchRoutingLogic {
   func navigate(to destination: Destination)
}

class SearchRouter: SearchRoutingLogic {
    weak var viewController: SearchViewController?
    private var navigationController: UINavigationController? {
        return viewController?.navigationController
    }
    
    func navigate(to destination: Destination) {
        
    }
}
