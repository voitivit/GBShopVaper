//
//  File.swift
//  
//
//  Created by emil kurbanov on 25.01.2022.
//

import Vapor

struct User: Content {
    let id: Int?
    let login: String?
    let password: String?
    let email: String?
    let gender: String?
    let creditCard: String?
    let bio: String?
    let name: String?
    let lastname: String?
}
