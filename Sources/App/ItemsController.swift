//
//  File.swift
//  
//
//  Created by emil kurbanov on 25.01.2022.
//

import Vapor

class ItemsController {
    func getCatalog(_ req: Request) throws -> EventLoopFuture<[CatalogResponse]> {
        guard let body = try? req.content.decode(Catalog.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = [
            CatalogResponse(productId: 300, productName: "Imac 27", price: 299000, shortDescription: "Самый мощный комп на свете=)", picUrl: "https://i.imgur.com/oTofyrZ.jpeg"),
            CatalogResponse(productId: 301, productName: "MacBookPro 16", price: 250000, shortDescription: "Самый лучший макБУК)", picUrl: "https://i.imgur.com/baobZEY.jpeg"),
            CatalogResponse(productId: 302, productName: "Наушники эйрподs", price: 10000, shortDescription: "Кого-то они напоминают..", picUrl: "https://i.imgur.com/gnrsGR4.jpeg"),
            CatalogResponse(productId: 303, productName: "Скролл", price: 1000, shortDescription: "Супер скролл для всего, что нужно поскролить)", picUrl: "https://i.imgur.com/9jXHLRY.jpeg")
        ]
        
        return req.eventLoop.future(response)
    }
    
    func getGood(_ req: Request) throws -> EventLoopFuture<GoodResponse> {
        guard let body = try? req.content.decode(Good.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        var response = GoodResponse(result: 1, productId: 999, productName: "Неизвестный товар.", price: 0, description: "Неизвестный товар, непонятный.", picUrl: nil)
        
        switch body.productId {
        case 123: response = GoodResponse(result: 1, productId: 300, productName: "Imac 27", price: 299000, description: "Самый мощный комп на свете=)", picUrl: "https://i.imgur.com/oTofyrZ.jpeg")
        case 124: response = GoodResponse(result: 1, productId: 301, productName: "MacBookPro 16", price: 250000, description: "Самый лучший макБУК)", picUrl: "https://i.imgur.com/baobZEY.jpeg")
        case 125: response = GoodResponse(result: 1, productId: 302, productName: "Наушники эйрподs", price: 10000, description: "Кого-то они напоминают..", picUrl: "https://i.imgur.com/F0ZHN9T.jpg")
        case 126: response = GoodResponse(result: 1, productId: 303, productName: "Скролл", price: 1000, description: "Супер скролл для всего, что нужно поскролить)", picUrl: "https://i.imgur.com/9jXHLRY.jpeg")
        default: response = GoodResponse(result: 1, productId: 999, productName: "Неизвестный товар.", price: 0, description: "Неизвестный товар, непонятный.", picUrl: nil)
        }
        
        return req.eventLoop.future(response)
    }
}

