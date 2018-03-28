//
//  SearchViewModel.swift
//  GithubViewer
//
//  Created by mac on 10/03/2018.
//  Copyright (c) 2018 GregApps. All rights reserved.
//


import UIKit

protocol SearchLogic {
    func didEditSearchText(text: String)
}

class SearchViewModel: NSObject, SearchLogic {

    // input

    // output

    // internal

    override init() {
        super.init()
    }
}

// MARK: Buisness Logic methods
//SearchLogic is delegate
extension SearchViewModel {

    func didEditSearchText(text: String) {
        print("view model sdafadfs")
    }
}

