//
//  AddToBasketRequest.swift
//
//
//  Created by Елена Русских on 02.03.2023.
//

import Vapor

struct AddToBasketRequest: Content {
    var id_product: Int
    var quantity: Int
}

