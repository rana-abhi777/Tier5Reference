//
//  APIHandler.swift
//  BusinessDirectory
//
//  Created by Aseem 13 on 04/01/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import Foundation
import SwiftyJSON

enum ResponseKeys : String {
    case user = "user"
    case countries = "countries"
}

extension LoginEndpoint {
    
    func handle(parameters : JSON) -> AnyObject? {
        
        switch self {
        case .login(_),.signup(_),.facebook(_):
            
            do {
                return try User(attributes: parameters[ResponseKeys.user.rawValue].dictionaryValue )
            } catch _ { return nil }
            
        }
    }
}

extension HomeEndpoint {
    
    func handle(parameters : JSON) -> AnyObject? {
        
        switch self {
        case .home(_):
            do {
                return try Home(attributes: parameters.dictionaryValue)
            } catch _ { return nil }
            
        case .viewBusiness(_):
            return nil
        }
        
    }
    
}
