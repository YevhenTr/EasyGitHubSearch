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
    
    private var users = [GitUserPreviewViewData]() {
        didSet {
            self.usersTableView?.reloadData()
        }
    }
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configure()
        
        let user1 = GitUserPreviewViewData(avatarURL: URL(string: "https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/female/10.png"), name: "user1", type: "User")
        let user2 = GitUserPreviewViewData(avatarURL: URL(string: "https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/male/86.png"), name: "user2", type: "Organization")
        
        self.users = [user1, user2]
        
    }
    
    // MARK: - Private
    
    private func configure() {
        self.navigationController?.navigationBar.isHidden = true
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
        
        if let model = self.users.object(at: indexPath.row), let cell = cell as? GitUserPreviewCell {
            cell.fill(with: model)
        }
        
        return cell
    }
}
