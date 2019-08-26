//
//  LoginViewController.swift
//  Harmony
//
//  Created by Mohamed Elbassiouny on 8/25/19.
//  Copyright © 2019 Mohamed Elbassiouny. All rights reserved.
//

import UIKit

protocol LoginView {
    func navigateToHome()
    func showLoadingIndicator()
    func hideLoadingIndicator()
    func showAlert()
}

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
    }
    
    
    
}

extension LoginViewController: LoginView{
    func navigateToHome() {
        print("rhis is print")
    }
    
    func showLoadingIndicator() {
        print("rhis is print")
    }
    
    func hideLoadingIndicator() {
        print("rhis is print")
    }
    
    func showAlert() {
        print("rhis is print")
    }
    
    
}
