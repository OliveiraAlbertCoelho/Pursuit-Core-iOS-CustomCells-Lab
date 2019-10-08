//
//  UserTableViewCell.swift
//  ProgrammaticUserCells
//
//  Created by albert coelho oliveira on 10/8/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    var userName: UILabel = {
           let name = UILabel()
           return name
       }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
         self.contentView.addSubview(userName)
         //configure Label's constraints
         configureConstraints()
     }
    required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
     
     override func setSelected(_ selected: Bool, animated: Bool) {
         super.setSelected(selected, animated: animated)
     }

     private func configureConstraints() {
         userName.translatesAutoresizingMaskIntoConstraints = false
         userName.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
         userName.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
     }
}
