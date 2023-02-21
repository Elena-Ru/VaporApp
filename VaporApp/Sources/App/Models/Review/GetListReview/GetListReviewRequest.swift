//
//  GetListReviewRequest.swift
//  
//
//  Created by Елена Русских on 21.02.2023.
//

import Vapor

struct GetListReviewRequest: Content {
    var page_number: Int
    var id_product: Int
}
