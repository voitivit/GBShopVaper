//
//  File.swift
//  
//
//  Created by emil kurbanov on 25.01.2022.
//

import Vapor

class CartController {
    func getCart(_ req: Request) throws -> EventLoopFuture<CartResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = CartResponse(
            amount: 48000,
            count: 2,
            contents: [
                CartContents(productId: 300, productName: "Imac 27", productPrice: 299000, quantity: 1),
                CartContents(productId: 301, productName: "MacBookPro 16", productPrice: 250000, quantity: 1)
            ]
        )
        
        return req.eventLoop.future(response)
    }
    
    func payCart(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Товары оплачены",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func addToCart(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(Cart.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Товар добавлен в корзину",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func deleteFromCart(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(Cart.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Товар удален из корзины",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
}

