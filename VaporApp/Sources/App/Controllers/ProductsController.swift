//
//  ProductsController.swift
//
//
//  Created by Елена Русских on 18.02.2023.
//

import Fluent
import Vapor

class ProductsController {
    func getGoodById(_ req: Request) throws -> EventLoopFuture<GetGoodByIdResponse> {
        guard let body = try? req.query.decode(GetGoodByIdRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = GetGoodByIdResponse (
            result: 1,
            product_name: "Ноутбук",
            product_price: 45600,
            product_description: "Мощный игровой ноутбук",
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
    
    func catalogData(_ req: Request) throws -> EventLoopFuture<[CatalogDataResponse]> {
        guard let body = try? req.query.decode(CatalogDataRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response: [CatalogDataResponse] = [
            CatalogDataResponse(
                id_product: 123,
                product_name: "Ноутбук",
                price: 45600,
                error_message: nil
            ),
            CatalogDataResponse(
                id_product: 456,
                product_name: "Мышка",
                price: 1000 ,
                error_message: nil
            )
        ]
        return req.eventLoop.future(response)
    }
}
