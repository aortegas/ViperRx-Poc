//
//  RootRouter.swift
//  ViperRx-Poc
//
//  Created by Iñaki Vitoria on 23/1/17.
//  Copyright © 2017 Iñaki Vitoria. All rights reserved.
//

import UIKit

class RootRouter: RootWireframe {
    
    var rootNavigationController:UINavigationController;
    
    init() {
        rootNavigationController = UINavigationController();
        rootNavigationController.isNavigationBarHidden = true;
    }
    

    func presentLoginScreen(in window: UIWindow) {
        
        let loginViewController:UIViewController = LoginRouter.loadModule()
    
        rootNavigationController.setViewControllers([loginViewController], animated: true)

        window.rootViewController = rootNavigationController
        window.makeKeyAndVisible()
    }

}
