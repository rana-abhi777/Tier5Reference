//
//  APIConstants.swift
//  BusinessDirectory
//
//  Created by Aseem 13 on 04/01/17.
//  Copyright © 2017 Taran. All rights reserved.
//


import Foundation

internal struct APIConstants {
    
    static let basePath = "http://35.167.112.227/api/v1/"
    static let basePathimages = "http://35.167.112.227/resize/"
    static let status = "status"
    static let message = "msg"
    static let login = "login"
    static let signup = "register"
    static let facebook = "facebook/login"
    static let home = "home"
    static let viewBusiness = "viewBusiness"
}

enum Keys : String{
    
    //User LoginProcess Keys
    case email = "email"
    case password = "password"
    case facebookId = "fb_id"
    
    //SignUp Keys
    case name = "name"
    case username = "username"
    case usertype = "user_type"
    case phoneNo = "phone_no"
    case countryId = "country_id"
    case city = "city"
    case gender = "gender"
    case dob = "dob"
    
    //Home
    case lat = "lat"
    case lng = "lng"
    case page = "page_no"
    case businessId = "businessId"
    case apiToken = "api_token"
    
}

enum Validate : String {
    
    case none
    case success = "1"
    case failure = "0"
    case invalidAccessToken = "2"
    case fbLogin = "3"
    
    func map(response message : String?) -> String? {
        
        switch self {
        case .success:
            return message
        case .failure :
            return message
        case .invalidAccessToken :
            return message
            
        default:
            return nil
        }
        
    }
}

enum Response {
    case success(AnyObject?)
    case failure(Validate)
}

typealias OptionalDictionary = [String : String]?

struct Parameters {
    
    static let login : [Keys] = [.email,.password]
    
    static let signup : [Keys] = [.name, .email, .username, .password, .usertype, .phoneNo, .countryId, .city, .lat, .lng, .gender, .dob]
    
    static let facebook : [Keys] = [ .facebookId, .email ]
    
    static let home : [Keys] = [ .lat, .lng, .page]
    
    static let viewBusiness : [Keys]  = [.businessId, .lat, .lng, .apiToken]
    
}





