//
//  SearchViewController.swift
//  GithubViewer
//
//  Created by mac on 10/03/2018.
//  Copyright (c) 2018 GregApps. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    //MARK: Properties
    
    fileprivate var viewModel: SearchLogic?
    fileprivate var router: SearchRoutingLogic?

    static let identifier = "SearchViewController"   
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var filterButton: UIButton!
    
    
    
    
    //MARK: Initialization
    init() {
        super.init(nibName: nil, bundle: nil)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    //MARK: Methods
    
    
    
    private func setup() {
        self.viewModel = SearchViewModel()
        self.router = SearchRouter()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

    private func setupViews() {
        tableView.delegate = self
        tableView.dataSource = viewModel as? UITableViewDataSource
        
        let nib1 = UINib(nibName: UserCell.name, bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: UserCell.name)
        
        let nib2 = UINib(nibName: UserExpandedTableViewCell.name, bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: UserExpandedTableViewCell.name)
        
        let nib3 = UINib(nibName: RepositoryTableViewCell.name, bundle: nil)
        tableView.register(nib3, forCellReuseIdentifier: RepositoryTableViewCell.name)
        
        let nib4 = UINib(nibName: RepositoryExpandedTableViewCell.name, bundle: nil)
        tableView.register(nib4, forCellReuseIdentifier: RepositoryExpandedTableViewCell.name)
    }
    
    
    @IBAction func filterButtonTapped(_ sender: UIButton) {
        print("Button tapped")
    }
    
    @IBAction func textFieldEdited(_ sender: UITextField) {
        viewModel?.didEditSearchText(text: sender.text!)
    }
    
    
}

//data source extension methods
extension SearchViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell?
        
        switch indexPath.row {
        case 0:
            let localCell = tableView.dequeueReusableCell(withIdentifier: UserCell.name)
            
            cell = localCell
        case 1:
            let localCell = tableView.dequeueReusableCell(withIdentifier: UserExpandedTableViewCell.name)
            
            cell = localCell
        case 2:
            let localCell = tableView.dequeueReusableCell(withIdentifier: RepositoryTableViewCell.name)
            
            cell = localCell
        case 3:
            let localCell = tableView.dequeueReusableCell(withIdentifier: RepositoryExpandedTableViewCell.name) as! RepositoryExpandedTableViewCell
            
            cell = localCell
        default:
            cell = tableView.dequeueReusableCell(withIdentifier: UserCell.name)
            
        }
        
        
        cell?.backgroundColor = .red
        return cell!
    }
    
    
}
