//
//  User.swift
//  APISampleClass
//
//  Created by cbl20 on 2/23/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit
import SwiftyJSON

class User: NSObject {

    var user_id : String?
    var name : String?
    var email : String?
    var api_token : String?
    var image : String?
    var phone_no : String?
    var lat : String?
    var lng : String?
    var gender : String?
    var dob : String?
    
    required init(attributes: OptionalJSON) throws{
        super.init()
        
        user_id = .userId => attributes
        name = .name => attributes
        email = .email => attributes
        api_token = .apiToken => attributes
        image = .image => attributes
        phone_no = .phoneNo => attributes
        lat = .lat => attributes
        lng = .lng => attributes
        gender = .gender => attributes
        dob = .dob => attributes
        
    }
    
    override init() {
        super.init()
    }

}
