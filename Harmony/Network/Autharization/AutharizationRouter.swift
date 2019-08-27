//
//  AutharizationRouter.swift
//  Harmony
//
//  Created by Mohamed Elbassiouny on 8/25/19.
//  Copyright © 2019 Mohamed Elbassiouny. All rights reserved.
//

import Foundation
import Alamofire

enum AutharizationRouter: URLRequestConvertible {
    
    case login([String: Any])
    
    func asURLRequest() throws -> URLRequest {
        var method : HTTPMethod {
            switch self {
            case .login:
                return .post
            }
        }
        
        let parameters : ([String: Any]?) = {
            switch self {
            case .login(let parameters):
                return parameters
            }
        }()
        
        let url : URL = {
            let destURL : String?
            switch  self {
            case .login:
                destURL = ""
                
            }
            var url : URL!
            if let destURL = destURL {
                url = URL(string: destURL)
            }
            return url
            
        }()
        
//        let headers : HTTPHeaders? = {
//            let authHeaders : [String:String]?
//            switch self {
//            case .login:
//                authHeaders =  nil
//            }
//         //   return authHeaders
//        }()
        
        var urlRequest = URLRequest(url: url)
        
        urlRequest.httpMethod = method.rawValue
        
        let encoding : ParameterEncoding = {
            switch method {
            case .get:
                return URLEncoding.default
            default:
                return JSONEncoding.default
            }
        }()
        
        return try encoding.encode(urlRequest, with: parameters)
    }
    
}
