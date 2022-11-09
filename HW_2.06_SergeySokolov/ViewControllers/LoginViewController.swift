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
    
    let user = User()
    
    
    @IBAction func logInButtonTapped() {
        guard loginTextField.text == user.login, passwordTextField.text == user.password else {
            showMessage(
                title: "ERROR:",
                message: "Invalid login or password.",
                textField: passwordTextField
            )
            return
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user.login
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func remindCredentials(_ sender: UIButton) {
        sender.tag == 0
        ? showMessage(title: "Your login is:", message: "\(user.login)")
        : showMessage(title: "Your password is:", message: "\(user.password)")
    }
    
    private func showMessage(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: false)
    }
    
    
    
    
}
    


