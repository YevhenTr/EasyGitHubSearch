//
//  UserListViewController.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 12.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import UIKit

class UserListViewController: BaseViewController {

    // MARK: - Properties
    
    @IBOutlet var usersTableView: UITableView?
    
    private var users = [UserItem]() {
        didSet {
            self.usersTableView?.reloadData()
        }
    }
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configure()
    }
    
    // MARK: - Private
    
    private func configure() {
        let usersTable = self.usersTableView
        
        usersTable?.delegate = self
        usersTable?.dataSource = self
        usersTable?.register(GitUserPreviewCell.self)
        
        usersTable?.reloadData()
    }
}

extension UserListViewController: UITableViewDelegate {
    
}

extension UserListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withCellClass: GitUserPreviewCell.self, for: indexPath)
        
//        (cell as? GitUserPreviewCell)
        
        return cell
    }
}
