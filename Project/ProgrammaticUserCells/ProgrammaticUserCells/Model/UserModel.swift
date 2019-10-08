//
//  UserModel.swift
//  ProgrammaticUserCells
//
//  Created by albert coelho oliveira on 10/8/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import Foundation

struct UserWrapper: Codable {
    let results: [User]
    
    struct User: Codable{
        let gender: String
        let name: fullName
        let location: fullAddress
        let email: String
        let phone: String
        let picture: picSize
        let dob: birthday
    }
    struct fullName:Codable{
        let title: String
        let first: String
        let last: String
    }
    struct fullAddress: Codable{
        let street: String
        let city: String
        let state: String
    }
    struct picSize: Codable{
        let large: String
    }

    struct birthday: Codable {
        let date: String
    }
}
