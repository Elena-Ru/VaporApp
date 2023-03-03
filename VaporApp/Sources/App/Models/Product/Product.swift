//
//  Product.swift
//  
//
//  Created by Елена Русских on 03.03.2023.
//

import Vapor

struct Product: Content {
    var id_product: Int
    var product_name: String
    var product_price: Int
    var product_description: String
}
