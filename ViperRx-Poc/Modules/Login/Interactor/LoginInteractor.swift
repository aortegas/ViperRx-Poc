//
//  LoginInteractor.swift
//  ViperRx-Poc
//
//  Created by Iñaki Vitoria on 23/1/17.
//  Copyright © 2017 Iñaki Vitoria. All rights reserved.
//

import Foundation


class LoginInteractor {
    
    weak var presenter:LoginPresenter?
    
    init() {
        
    }
    
    func loginWith(username:String, password:String) {
        
        if (username.characters.count == 0 || password.characters.count == 0) {
            
            self.presenter?.loginFailed(message: "Username or password incorrect")
            
        } else {
            
            LoginService().loginWith(username: username, password: password) { [unowned self] user in
                
                if (user != nil){
                    self.presenter?.loginDone(user: user!)
                }
                else {
                    self.presenter?.loginFailed(message: "Username or password incorrect")
                }
            }

            
        }

       
        
        
    }
    
    
    
}
