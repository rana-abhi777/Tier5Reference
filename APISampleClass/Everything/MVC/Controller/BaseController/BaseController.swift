//
//  BaseController.swift
//  APISampleClass
//
//  Created by Aseem 13 on 23/02/17.
//  Copyright © 2017 Taran. All rights reserved.
//

import UIKit

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    


}
