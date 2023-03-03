//
//  PayBasketResponse.swift
//  
//
//  Created by Елена Русских on 03.03.2023.
//

import Vapor

struct PayBasketResponse: Content {
    var result: Int
    var error_message: String?
}
