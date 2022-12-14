//
//  ViewController.swift
//  HW_2.06_SergeySokolov
//
//  Created by MacBook Air 13 on 07.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets:
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    // MARK: - Public properties:
    private let user = User.getUserData()
    
    
    // MARK: - Override Methods:
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                guard let userInfoVC = navigationVC.topViewController as? WelcomeViewController else {
                    return
                }
                userInfoVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    // MARK: - IB Actions
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
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func remindCredentials(_ sender: UIButton) {
        sender.tag == 0
        ? showMessage(title: "Your login is:", message: "\(user.login)")
        : showMessage(title: "Your password is:", message: "\(user.password)")
    }
    
    // MARK: - Private Methods:
    private func showMessage(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: false)
    }
    
    
    
}



