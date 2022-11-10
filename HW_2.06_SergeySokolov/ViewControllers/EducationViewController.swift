//
//  EducationViewController.swift
//  HW_2.06_SergeySokolov
//
//  Created by MacBook Air 13 on 09.11.2022.
//

import UIKit


class EducationViewController: UIViewController {
    
    @IBOutlet var educationDataLabel: UILabel!
    
    var education = Education.getEducationData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        educationDataLabel.text = "University: \(education.university)\nDegree: \(education.degree)\n Graduation: \(education.graduationYear)"
    }
}
