//
//  LoginRouter.swift
//  ViperRx-Poc
//
//  Created by Iñaki Vitoria on 23/1/17.
//  Copyright © 2017 Iñaki Vitoria. All rights reserved.
//

import Foundation
import UIKit

class LoginRouter:CustomRouter {
    
    weak var viewController: UIViewController!
    
    required init() {

    }
    
    static func loadModule() -> UIViewController {
        
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier :"LoginViewController") as! LoginViewController
        
        let presenter = LoginPresenter()
        let interactor = LoginInteractor()
        let router = LoginRouter();
        
        router.viewController = view
        
        view.presenter = presenter
       
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.presenter = presenter
        
        return view
    }
    
    
    func presentRegisterFingerprint() {
        
        let registerFingerprintViewController = RegisterFingerprintRouter.loadModule()
        
        let navigationController:UINavigationController? =  viewController?.navigationController
       
        navigationController?.setViewControllers([registerFingerprintViewController], animated: true)
    }
    
    
    func presentDashboard() {
        
        let dashboardViewController = DashboardRouter.loadModule()
        
        let navigationController:UINavigationController? =  viewController?.navigationController
        
        navigationController?.setViewControllers([dashboardViewController], animated: true)
        
    }

    
}
