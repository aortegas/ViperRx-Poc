//
//  CustomRouter.swift
//  ViperRx-Poc
//
//  Created by Iñaki Vitoria on 23/1/17.
//  Copyright © 2017 Iñaki Vitoria. All rights reserved.
//

import UIKit

protocol CustomRouter {
    
    init()
    static func loadModule() -> UIViewController
}


