//
//  File.swift
//  
//
//  Created by emil kurbanov on 25.01.2022.
//

import Vapor

struct CatalogResponse: Content {
    let productId: Int?
    let productName: String?
    let price: Int?
    let shortDescription: String?
    let picUrl: String?
}

