//
//  WelViewController.swift
//  HW_2.06_SergeySokolov
//
//  Created by MacBook Air 13 on 09.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var personalInfo: UILabel!
    
//    var user = User.getUserData()
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Hello \(user.login)!"
        personalInfo.text = "Name: \(user.name) \nSurname: \(user.surname) \nDate of birth: \(user.birthDay).\(user.birthMonth).\(user.birthYear)"
        
    }
    

  

}
