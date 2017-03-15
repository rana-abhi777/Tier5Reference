//
//  Utility.swift
//  APISampleClass
//
//  Created by cbl20 on 2/23/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class Utility: NSObject, NVActivityIndicatorViewable {

    static let functions = Utility()
    
    func loader()  {
        startAnimating(nil, message: nil, messageFont: nil, type: .lineScalePulseOutRapid, color: UIColor.white, padding: nil, displayTimeThreshold: nil, minimumDisplayTime: nil)
    }
    
    func removeLoader()  {
        stopAnimating()
    }

}
