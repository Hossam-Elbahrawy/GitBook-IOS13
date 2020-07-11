//
//  Router.swift
//  GitBook-IOS13
//
//  Created by Hossam Elbahrawy on 7/12/20.
//  Copyright © 2020 Hossam Elbahrawy. All rights reserved.
//

import Foundation
import Alamofire


enum Router: URLRequestConvertible{
    case getRepos(userName: String)
    
    var url: URL{
        switch self {
        case .getRepos(let userName):
            return URL(string: "https://api.github.com/users/\(userName)/repos")!
        }
    }
    var method:HTTPMethod{
        switch self {
        case .getRepos:
            return .get
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        let urlRequest = try URLRequest(url: url, method: method)
        return urlRequest;
    }
    
}
