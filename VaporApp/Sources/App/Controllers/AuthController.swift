//
//  AuthController.swift
//  
//
//  Created by Елена Русских on 17.02.2023.
//
import Fluent
import Vapor

class AuthController {
    func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.query.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RegisterResponse(
            result: 1,
            user_message: "Регистрация прошла успешно!",
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
    
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.query.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = LoginResponse (
            result: 1,
            user: User (
                id_user: 123,
                user_login: "geekbains",
                user_name: "John",
                user_lastname: "Doe"
            ),
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<LogoutResponse> {
        print(req)
        guard let body = try? req.query.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = LogoutResponse (
            result: 1,
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
    
    func changeUserData(_ req: Request) throws -> EventLoopFuture<ChangeUserDataResponse> {
        guard let body = try? req.query.decode(ChangeUserDataRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ChangeUserDataResponse (
            result: 1,
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
}
