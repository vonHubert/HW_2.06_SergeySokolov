//
//  ViewController.swift
//  HW_2.06_SergeySokolov
//
//  Created by MacBook Air 13 on 07.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    /*    override func viewDidLoad() {
     super.viewDidLoad()
     }
     */
    
    private let user = "SergeySokolov"
    private let password = "Emden1914"
    
    @IBAction func logInButtonTapped() {
        guard loginTextField.text == user, passwordTextField.text == password else {
            showMessage(textField: passwordTextField)
            
            return
        }
        //  performSegue(withIdentifier: "showWelcomeView", sender: nil)
    }
    
   private func showMessage(textField: UITextField? = nil) {
        let alert = UIAlertController(title: "Invalid login or password.", message: "", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: false)
    }
}
    


