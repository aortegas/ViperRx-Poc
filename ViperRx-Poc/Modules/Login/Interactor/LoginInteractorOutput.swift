//
//  LoginInteractorOutput.swift
//  ViperRx-Poc
//
//  Created by Iñaki Vitoria on 24/1/17.
//  Copyright © 2017 Iñaki Vitoria. All rights reserved.
//

import Foundation

protocol LoginInteractorOutput {
    
    func loginDone(user: User)
    func loginFailed(message: String)
}
