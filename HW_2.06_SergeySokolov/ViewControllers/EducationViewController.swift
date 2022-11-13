//
//  EducationViewController.swift
//  HW_2.06_SergeySokolov
//
//  Created by MacBook Air 13 on 09.11.2022.
//

import UIKit

class EducationViewController: UIViewController {
    
    // MARK: - IB Outlets:
    @IBOutlet var educationDataLabel: UILabel!
    
    // MARK: - Public properties
    var user: User! //= Education.getEducationData()
    
    // MARK: - Override Methods:
    override func viewDidLoad() {
        super.viewDidLoad()
        educationDataLabel.text = """
University: \(user.person.education.university)
Degree: \(user.person.education.degree)
Graduation: \(user.person.education.graduationYear)
"""
    }
    
    
}
