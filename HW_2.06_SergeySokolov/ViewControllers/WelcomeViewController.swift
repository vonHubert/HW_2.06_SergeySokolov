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
        personalInfo.text = """
Name: \(user.person.name)
Surname: \(user.person.surname)
Date of birth: \(user.person.birthDay).\(user.person.birthMonth).\(user.person.birthYear)
"""
        
    }
    
    
}
