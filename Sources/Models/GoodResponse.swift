//
//  File.swift
//  
//
//  Created by emil kurbanov on 25.01.2022.
//

import Vapor

struct GoodResponse: Content {
    let result: Int?
    let productId: Int?
    let productName: String?
    let price: Int?
    let description: String?
    let picUrl: String?
}

