//
//  LogoutResponse.swift
//  
//
//  Created by Елена Русских on 18.02.2023.
//

import Vapor

struct LogoutResponse: Content {
    var result: Int
    var error_message: String?
}
