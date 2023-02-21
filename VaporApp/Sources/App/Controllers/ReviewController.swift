//
//  ReviewController.swift
//  
//
//  Created by Елена Русских on 21.02.2023.
//

import Fluent
import Vapor

class ReviewController {
    func addReview(_ req: Request) throws -> EventLoopFuture<AddReviewResponse> {
        guard let body = try? req.query.decode(AddReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = AddReviewResponse (
            result: 1,
            user_message: "Ваш отзыв был передан на модерацию",
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
    
    func removeReview(_ req: Request) throws -> EventLoopFuture<RemoveReviewResponse> {
        guard let body = try? req.query.decode(RemoveReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RemoveReviewResponse (
            result: 1,
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
}
