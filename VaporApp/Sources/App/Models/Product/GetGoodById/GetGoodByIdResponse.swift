//
//  GetGoodByIdResponse.swift
//
//
//  Created by Елена Русских on 18.02.2023.
//

import Vapor

struct GetGoodByIdResponse: Content {
    var result: Int
    var product_name: String
    var product_price: Int
    var product_description: String
    var error_message: String?
}
