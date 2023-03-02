//
//  AddToBasketResponse.swift
//
//
//  Created by Елена Русских on 02.03.2023.
//

import Vapor

struct AddToBasketResponse: Content {
    var result: Int
    var error_message: String?
}


