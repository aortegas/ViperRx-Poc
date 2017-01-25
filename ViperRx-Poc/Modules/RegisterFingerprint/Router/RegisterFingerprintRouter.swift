//
//  RegisterTouchidRouter.swift
//  ViperRx-Poc
//
//  Created by Iñaki Vitoria on 25/1/17.
//  Copyright © 2017 Iñaki Vitoria. All rights reserved.
//

import Foundation
import UIKit

class RegisterFingerprintRouter:CustomRouter {
    
    weak var viewController:UIViewController?
    
    
    required init() {
        
    }
    
    static func loadModule() -> UIViewController {
    
        let storyboard = UIStoryboard(name: "RegisterFingerprint", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier :"RegisterFingerprintViewController") as! RegisterFingerprintViewController
        
        let presenter = RegisterFingerprintPresenter()
        let interactor = RegisterFingerprintInteractor()
        let router = RegisterFingerprintRouter()
        
        router.viewController = view
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.presenter = presenter
        
        return view

        
    }
    
}
