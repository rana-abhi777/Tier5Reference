//
//  Home.swift
//  APISampleClass
//
//  Created by cbl20 on 2/23/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit
import SwiftyJSON
class Home: NSObject {

    var businessId : String?
    var businessName : String?
    var distance : String?
    var followers : String?
    var offers : String?
    var ratings : String?
    var category : String?
    var imagelogo : String?
    var arrayfeaturedBusiness : [Home]? =  []
    
    
    required init(attributes: OptionalJSON) throws{
        super.init()
        
        businessId = .businessId => attributes
        businessName = .name => attributes
        distance = .distance => attributes
        followers = .followerCount => attributes
        offers = .offerCount => attributes
        ratings = .ratingCount => attributes
        category = .category => attributes
        imagelogo = .imagelogo => attributes
        
        
        let businessArray = Home.parseArrayinToModal(withAttributes:.featuredBusiness =| attributes) as? [Home]
        arrayfeaturedBusiness = businessArray
        
    }
    
    override init() {
        super.init()
    }
    
    class func parseArrayinToModal(withAttributes attributes : [JSON]?) -> AnyObject? {
        
        var users : [Home] = []
        guard let attri = attributes else {
            return nil
        }
        for dict in attri {
            do {
                let modal =  try Home(attributes: dict.dictionaryValue)
                users.append(modal)
            } catch _ {
            }
        }
        return users as AnyObject?
    }

}
