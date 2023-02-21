//
//  AddReviewRequest.swift.swift
//  
//  Created by Елена Русских on 21.02.2023.
//

import Vapor

struct AddReviewRequest: Content {
    var id_user: Int?
    var text: String
}
