//
//  WelViewController.swift
//  HW_2.06_SergeySokolov
//
//  Created by MacBook Air 13 on 09.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets:
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var personalInfo: UILabel!
    
    // MARK: - Public properties
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Hello \(user.login)!"
        personalInfo.text = "Name: \(user.name) \nSurname: \(user.surname) \nDate of birth: \(user.birthDay).\(user.birthMonth).\(user.birthYear)"
        
    }
    
    
}
