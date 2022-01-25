//
//  File.swift
//  
//
//  Created by emil kurbanov on 25.01.2022.
//

import Vapor

struct Catalog: Content {
    var pageNumber: Int?
    var categoryId: Int?
}

