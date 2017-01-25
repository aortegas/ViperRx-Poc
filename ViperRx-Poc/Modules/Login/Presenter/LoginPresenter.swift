//
//  LoginPresenter.swift
//  ViperRx-Poc
//
//  Created by Iñaki Vitoria on 23/1/17.
//  Copyright © 2017 Iñaki Vitoria. All rights reserved.
//

import Foundation
import UIKit

class LoginPresenter {
    
    var view:LoginViewController?
    var interactor:LoginInteractor?
    var router:LoginRouter?
    
    init() {
        
    }
    
    func didRequestLoginWith(username:String, password:String) {
        
        view?.hideKeyboard()
        view?.setButtons(enabled: false)
        view?.showLoading()
        interactor?.loginWith(username: username, password: password)
               
        
    }
    
    
}


extension LoginPresenter: LoginInteractorOutput {
    
    func loginDone(user: User) {
        
        view?.setButtons(enabled: true)
        view?.hideLoading()
        
        router?.presentRegisterFingerprint()
    }
    
    func loginFailed(message: String) {
        
        view?.showError(message: message)
        view?.setButtons(enabled: true)
        view?.hideLoading()
        
    }

    
}
