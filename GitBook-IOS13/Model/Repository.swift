//
//  Repository.swift
//  GitBook-IOS13
//
//  Created by Hossam Elbahrawy on 6/20/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation


class Repository:Decodable {
    
    let id: String?
    let name: String?
    let url: String?
    let language: String?
    let starsgazersCount: Int?
    let forksCount: Int?
    let watchersCount: Int?
}
