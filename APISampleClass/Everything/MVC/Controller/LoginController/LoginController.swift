//
//  LoginController.swift
//  BusinessDirectory
//
//  Created by Aseem 13 on 15/12/16.
//  Copyright © 2016 Taran. All rights reserved.
//

import UIKit
import ISMessages

class LoginController: BaseController {
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func Validate() -> Valid{
        
        let value = Validation.shared.validate(login: txtEmail?.text, password: txtPassword?.text)
        return value
        
    }
    
    //MARK: Handle Response
    func handleResponse(response : Response) {
        switch response{
            
        case .success(let responseValue):
            
            if let _ = responseValue as? User{
                Alerts.shared.show(alert: .success, message: Alert.login.rawValue, type: .success)
            }
            
        case .failure(let str):
            Alerts.shared.show(alert: .oops, message: /str.rawValue, type: .error)
        }
    }
    
}

extension LoginController{
   
    @IBAction func btnLogin(_ sender: AnyObject) {
        
        ISMessages.hideAlert(animated: true)
        let value = Validate()
        switch value {
        case .success:
            
            APIManager.shared.request(with: LoginEndpoint.login(email: txtEmail.text, password: txtPassword.text), completion: {[weak self] (response) in
        
                self?.handleResponse(response: response)
            })
        case .failure(let title,let msg):
            Alerts.shared.show(alert: title, message: msg , type : .info)
        }
    }
    

}
