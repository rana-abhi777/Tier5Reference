//
//  Login.swift
//  APISampleClass
//
//  Created by cbl20 on 2/23/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit
import Alamofire

enum LoginEndpoint {
    
    case login(email : String? , password : String?)
    case signup(name : String? , email : String?, username : String?, password : String? , usertype : String?, phoneNo : String? , countryId: String?, city : String? , lat: String?, lng : String? ,gender : String?,  dob : String?)
    case facebook(facebookId : String?, email : String?)
    
}


extension LoginEndpoint : Router{
    
    var route : String  {
        
        switch self {
        
            case .login(_): return APIConstants.login
            case .signup(_): return APIConstants.signup
            case .facebook(_): return APIConstants.facebook
        }
    }
    
    var parameters: OptionalDictionary{
        return format()
    }
    
    
    func format() -> OptionalDictionary {
        
        switch self {
            
        case .login(let email , let password):
            return Parameters.login.map(values: [email,password])
            
        case .signup(let name, let email, let username,let password,let usertype,let phoneNo,  let countryId,let city,let lat,let lng,let gender,let dob):
            return Parameters.signup.map(values: [name , email , username , password , usertype , phoneNo , countryId , city , lat , lng , gender , dob])
            
        case .facebook(let facebookId,let email):
            return Parameters.facebook.map(values: [facebookId,email])
            
            
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
