//
//  Home.swift
//  APISampleClass
//
//  Created by Aseem 13 on 23/02/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit
import Alamofire

enum HomeEndpoint{
    
    case home(lat : String? , lng : String?, page : String?)
    case viewBusiness(businessId : String? ,lat : String? , lng : String?, apiToken : String?)
    
}

extension HomeEndpoint : Router{
    
    var route : String  {
        switch self {
      
            case .home(_): return APIConstants.home
            case .viewBusiness(_): return APIConstants.viewBusiness
           
        }
    }
    
    var parameters: OptionalDictionary{
        
        switch self {
        case .home(_) : return format()
        case .viewBusiness(_): return format()
        }
        
    }
    
    func format() -> OptionalDictionary {
        
        switch self {
            
        case .home(let lat, let lng,let page):
            return Parameters.home.map(values: [lat, lng, page])
        case .viewBusiness(let businessId, let lat, let lng, let apiToken):
            return Parameters.viewBusiness.map(values: [businessId, lat, lng, apiToken])
            
        }
    }

    var method : Alamofire.HTTPMethod {
        switch self {
        default:
            return .post
        }
    }
    
    var baseURL: String{
        return APIConstants.basePath
    }
    
}
