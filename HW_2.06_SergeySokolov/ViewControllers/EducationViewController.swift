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
    var education = Education.getEducationData()
    
    // MARK: - Override Methods:
    override func viewDidLoad() {
        super.viewDidLoad()
        educationDataLabel.text = "University: \(education.university)\nDegree: \(education.degree)\n Graduation: \(education.graduationYear)"
    }
    
    
}
