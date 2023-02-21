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
    
    func getListReview(_ req: Request) throws -> EventLoopFuture<GetListReviewResponse> {
        guard let body = try? req.query.decode(GetListReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = GetListReviewResponse (
            page_number: 1,
            reviews: [Review(id_comment: 123, text: "cool"),
                     Review(id_comment: 23, text: "not bat"),
                     Review(id_comment: 3, text: "worth this money")],
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
}
