//
//  File.swift
//  
//
//  Created by emil kurbanov on 25.01.2022.
//

import Vapor

struct CartResponse: Content {
    var amount: Int?
    var count: Int?
    var contents: [CartContents]
}

struct CartContents: Content {
    var productId: Int?
    var productName: String?
    var productPrice: Int?
    var quantity: Int?
}

