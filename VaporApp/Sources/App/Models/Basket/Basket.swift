//
//  Basket.swift
//  
//
//  Created by Елена Русских on 03.03.2023.
//

import Vapor

struct BasketProduct: Content {
    var product: Product
    var qty: Int
}
