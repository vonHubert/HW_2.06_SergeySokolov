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
            wrongCredentialsMessage(textField: passwordTextField)
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
        sender.tag == 0 ? remindLoginMessage() : remindPasswordMessage()
    }
    

    // мне пришлось разделить сообщения на разные функции т.к. не получилось заставить работать одну общую функцию с параметрами, иначе не успевал закончить ДЗ. Знаю что это не правильно ( 1й модуль еще...
    
    private func wrongCredentialsMessage(textField: UITextField? = nil) {
        let alert = UIAlertController(title: "ERROR:", message: "Invalid login or password.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: false)
    }
    
    private func remindLoginMessage(textField: UITextField? = nil) {
        let alert = UIAlertController(title: "Your login is:", message: "\(user.login)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: false)
    }
    
    private func remindPasswordMessage(textField: UITextField? = nil) {
        let alert = UIAlertController(title: "Your password is:", message: "\(user.password)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: false)
    }
}
    


