//
//  DeleteReviewResponse.swift
//  
//
//  Created by Елена Русских on 21.02.2023.
//

import Vapor

struct RemoveReviewResponse: Content {
    var result: Int
    var error_message: String?
}
