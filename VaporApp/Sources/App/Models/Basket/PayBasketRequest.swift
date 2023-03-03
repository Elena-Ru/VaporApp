//
//  PayBasketRequest.swift
//  
//
//  Created by Елена Русских on 03.03.2023.
//

import Vapor

struct PayBasketRequest: Content {
    var cost_total: Int
}
