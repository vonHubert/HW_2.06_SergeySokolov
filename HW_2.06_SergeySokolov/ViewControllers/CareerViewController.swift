//
//  CareerViewController.swift
//  HW_2.06_SergeySokolov
//
//  Created by MacBook Air 13 on 09.11.2022.
//

import UIKit

class CareerViewController: UIViewController {

    @IBOutlet var careerDataLabel: UILabel!
    
    var job = Job.getJobData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        careerDataLabel.text = "Company: \(job.company)\nDepartment: \(job.department)\nPosition: \(job.position)"

       
    }
}
