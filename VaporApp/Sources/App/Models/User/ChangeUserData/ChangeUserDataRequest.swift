//
//  ChangeUserDataRequest.swift
//  
//
//  Created by Елена Русских on 18.02.2023.
//

import Vapor

struct ChangeUserDataRequest: Content {
    var id_user: Int
    var user_name: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}
