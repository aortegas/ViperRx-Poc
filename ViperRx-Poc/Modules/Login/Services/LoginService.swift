//
//  LoginService.swift
//  ViperRx-Poc
//
//  Created by Iñaki Vitoria on 25/1/17.
//  Copyright © 2017 Iñaki Vitoria. All rights reserved.
//

import UIKit

class LoginService: NSObject {
    
    let usernameKey: String = "bank"
    let passwordKey: String = "1234"
    let delayInSeconds = 2.0

    
    func loginWith(username:String, password:String, completionHandler: @escaping (User?)-> Void) {
        
      return DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            
            if (( username == self.usernameKey) && (password == self.passwordKey)) {
                
                let loggedUser:User = User(name: "Test", createdAt: Date())
    
                completionHandler(loggedUser)
                //return loggedUser;
            }
            else {
                completionHandler(nil)

               //return nil
            }
            
        }
    }

}
