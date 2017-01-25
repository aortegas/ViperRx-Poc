//
//  RegisterTouchidViewController.swift
//  ViperRx-Poc
//
//  Created by Iñaki Vitoria on 25/1/17.
//  Copyright © 2017 Iñaki Vitoria. All rights reserved.
//

import UIKit

class RegisterFingerprintViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    var presenter:RegisterFingerprintPresenter?
    
    @IBOutlet weak var registerButton: UIButton!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBAction func cancelPressed(_ sender: Any) {
        
        presenter?.didCancel()

    }
    
    @IBAction func registerPressed(_ sender: Any) {
        
         presenter?.didRegister()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
