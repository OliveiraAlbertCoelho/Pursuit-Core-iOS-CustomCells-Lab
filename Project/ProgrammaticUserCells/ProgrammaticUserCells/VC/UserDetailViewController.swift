//
//  UserDetailViewController.swift
//  ProgrammaticUserCells
//
//  Created by albert coelho oliveira on 10/8/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class UserDetailViewController: UIViewController {
    var user: User?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(userName)
        view.backgroundColor = .red
    }
    var userName: UILabel = {
        let name = UILabel(frame:CGRect(x: 100, y: 100, width: 20, height: 30))
           return name
       }()
    
}
