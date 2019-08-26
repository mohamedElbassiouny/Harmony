//
//  AutharizationRequest.swift
//  Harmony
//
//  Created by Mohamed Elbassiouny on 8/25/19.
//  Copyright © 2019 Mohamed Elbassiouny. All rights reserved.
//
import Alamofire
import Foundation
class AutharizationRequest {
    
    static func login(email: String, password: String, completionHandler: @escaping (_ result: Any?, _ error: Error?) -> Void) {
        let paramteres = ["email": email, "password": password]
        let request = AutharizationRouter.login(paramteres)
        
        AF.request(request).responseJSON { response in
            
            switch response.result {
            case .success(let value):
                completionHandler(value, nil)
            case .failure(let error):
                completionHandler(nil, error)
            }
        }
    }
    
}
