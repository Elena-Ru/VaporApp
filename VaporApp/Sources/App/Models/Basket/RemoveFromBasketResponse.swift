//
//  RemoveFromBasketResponse.swift
//
//
//  Created by Елена Русских on 02.03.2023.
//

import Vapor

struct RemoveFromBasketResponse: Content {
    var result: Int
    var error_message: String?
}

