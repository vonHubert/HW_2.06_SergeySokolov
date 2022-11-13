//
//  VehiclesViewController.swift
//  HW_2.06_SergeySokolov
//
//  Created by MacBook Air 13 on 09.11.2022.
//

import UIKit

class VehiclesViewController: UIViewController {

    // MARK: - IB Outlets:
    @IBOutlet var vehicleDataLabel: UILabel!
    
    // MARK: - Public properties
    var user: User!
    
    // MARK: - Override Methods:
    override func viewDidLoad() {
        super.viewDidLoad()
        vehicleDataLabel.text = "Brand: \(user.person.car.brand)\nModel: \(user.person.car.model)\nYear: \(user.person.car.year)\nPower: \(user.person.car.power) hp."
        }
    
    
}
