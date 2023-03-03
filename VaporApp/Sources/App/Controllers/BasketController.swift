//
//  BasketController.swift
//
//
//  Created by Елена Русских on 02.03.2023.
//

import Fluent
import Vapor

class BasketController {
    func addToBasket(_ req: Request) throws -> EventLoopFuture<AddToBasketResponse> {
        guard let body = try? req.query.decode(AddToBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = AddToBasketResponse(
            result: 1,
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
    
    func removeFromBasket(_ req: Request) throws -> EventLoopFuture<RemoveFromBasketResponse> {
        guard let body = try? req.query.decode(RemoveFromBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = RemoveFromBasketResponse(
            result: 1,
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
    
    func payBasket(_ req: Request) throws -> EventLoopFuture<PayBasketResponse> {
        guard let body = try? req.query.decode(PayBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = PayBasketResponse(
            result: 1,
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
}
