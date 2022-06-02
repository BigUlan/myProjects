//
//  LoginViewController.swift
//  My_App
//
//  Created by Ulan Beishenkulov on 02.06.2022.
//

import UIKit

class LoginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func tapEnterButton(_ sender: Any) {
        
        guard let login = loginTextField.text,
              let password = passwordTextField.text,
              login == "Ulan",
              password == "123" else {
            showError(message: "Неверный логин или пароль")
            return }
        
        performSegue(withIdentifier: "Login", sender: nil)
    }
}
