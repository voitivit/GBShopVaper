//
//  File.swift
//  
//
//  Created by emil kurbanov on 25.01.2022.
//

import Vapor

struct Cart: Content {
    var productId: Int?
    var quantity: Int?
}

