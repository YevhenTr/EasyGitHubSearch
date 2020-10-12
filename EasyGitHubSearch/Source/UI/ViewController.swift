//
//  ViewController.swift
//  EasyGitHubSearch
//
//  Created by Yevhen Triukhan on 11.10.2020.
//  Copyright © 2020 Yevhen Triukhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let networking = Networking(api: GitHubAPI())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.networking.search(users: "Tom", page: 0) { result in
            switch result {
            case .failure(let error):
                debugPrint(error.localizedDescription)
            case .success(let list):
                debugPrint(list.count)
                debugPrint(list.items.first)
            }
            
        }
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
