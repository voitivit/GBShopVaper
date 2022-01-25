//
//  File.swift
//  
//
//  Created by emil kurbanov on 25.01.2022.
//

import Vapor

struct Review: Content {
    var productId: Int?
    var userId: Int?
    var reviewText: String?
    var reviewId: Int?
}
