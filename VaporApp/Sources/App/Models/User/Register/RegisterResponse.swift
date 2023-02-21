//
//  RegisterResponse.swift
//  
//
//  Created by Елена Русских on 17.02.2023.
//

import Vapor

struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
