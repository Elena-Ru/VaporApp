//
//  CatalogDataResponse.swift
//  
//
//  Created by Елена Русских on 18.02.2023.
//

import Vapor

struct CatalogDataResponse: Content {
    var id_product: Int
    var product_name: String
    var price: Int
    var error_message: String?
}
