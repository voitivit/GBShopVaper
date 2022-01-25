//
//  File.swift
//  
//
//  Created by emil kurbanov on 25.01.2022.
//

import Vapor

class ReviewsController {
    func getReviews(_ req: Request) throws -> EventLoopFuture<[ReviewResponse]> {
        guard let body = try? req.content.decode(Good.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = [
            ReviewResponse(userId: 300, reviewText: "Супер"),
            ReviewResponse(userId: 301, reviewText: "Отлично! Спасибо Вам за товар!=))"),
        ]
        
        return req.eventLoop.future(response)
    }
    
    func addReview(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(Review.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Ваш отзыв отправлен!",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func removeReview(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(Review.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: nil,
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
}

