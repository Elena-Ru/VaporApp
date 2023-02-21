//
//  LoginRequest.swift
//  
//
//  Created by Елена Русских on 18.02.2023.
//
import Vapor

struct LoginRequest: Content {
    var username: String
    var password: String
}
