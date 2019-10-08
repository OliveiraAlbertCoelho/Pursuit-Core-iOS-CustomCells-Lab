//
//  UserDetailViewController.swift
//  ProgrammaticUserCells
//
//  Created by albert coelho oliveira on 10/8/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class UserDetailViewController: UIViewController {
    var user: User!
    override func viewDidLoad() {
        setUpLabel()
        self.view.addSubview(userName)
        self.view.addSubview(address)
        self.view.addSubview(email)
        self.view.backgroundColor = .white
        addConstraints()
        super.viewDidLoad()
    }
    func setUpLabel(){
        userName.text = "\(user.name.title) \(user.name.first) \(user.name.last) "
        email.text = user.email
        address.text = "\(user.location.street) \(user.location.city)"
    }
    lazy var userName: UILabel = {
        let name = UILabel(frame:CGRect(x: 0, y: 350, width: 400, height: 400))
           return name
       }()
    lazy var email: UILabel = {
        let email = UILabel(frame: CGRect(x: 0, y: 150, width: 400, height: 400))
        return email
    }()
    lazy var address: UILabel = {
        let address = UILabel(frame: CGRect(x: 0, y: 350, width: 400, height: 400))
        return address
    }()
    
    func addConstraints(){
    self.userName.translatesAutoresizingMaskIntoConstraints = false
       NSLayoutConstraint.activate(
       [userName.centerYAnchor.constraint(equalTo: self.view.centerYAnchor , constant: 0),
       userName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0),
       email.centerYAnchor.constraint(equalTo: self.view.centerYAnchor , constant: 0),
       email.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0),
       address.centerYAnchor.constraint(equalTo: self.view.centerYAnchor , constant: 0),
       address.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0),
        ])
    }
}
