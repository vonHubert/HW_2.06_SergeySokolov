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
    
    private let user = "1"
    private let password = "1"
    
    @IBAction func logInButtonTapped() {
        guard loginTextField.text == user, passwordTextField.text == password else {
            showMessage(textField: passwordTextField)
            return
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
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
    


