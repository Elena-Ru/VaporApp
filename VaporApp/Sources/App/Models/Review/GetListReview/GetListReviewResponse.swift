//
//  GetListReviewResponse.swift.swift
//  
//
//  Created by Елена Русских on 21.02.2023.
//

import Vapor

struct GetListReviewResponse: Content {
    var page_number: Int
    var reviews: [Review]
    var error_message: String?
}
