//
//  LoginResponse.swift
//  
//
//  Created by Елена Русских on 18.02.2023.
//

import Vapor

struct LoginResponse: Content {
    var result: Int
    var user: User
    var error_message: String?
}

