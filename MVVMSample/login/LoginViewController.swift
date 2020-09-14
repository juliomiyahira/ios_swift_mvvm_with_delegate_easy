//
//  LoginViewController.swift
//  MVVMSample
//
//  Created by julio cezar kenji Miyahira on 14/09/20.
//  Copyright © 2020 br.com.miyahira. All rights reserved.
//

import Foundation

import UIKit

class LoginViewController: UIViewController, LoginViewDelegate {
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap : UITapGestureRecognizer = UITapGestureRecognizer(target :self, action: #selector(UIInputViewController.dismissKeyboard));
        view.addGestureRecognizer(tap)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func loginOnClick(_ sender: Any) {
        print("clicou !");
        print("login: \(String(describing: self.loginTextField.text))")
        print("password: \(String(describing: self.passwordTextField.text))")
        dismissKeyboard()
    }
    
    @objc func dismissKeyboard () {
        self.view.endEditing(true)
    }
}
