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
    var car = Car.getCarData()
    
    // MARK: - Override Methods:
    override func viewDidLoad() {
        super.viewDidLoad()
        vehicleDataLabel.text = "Brand: \(car.brand)\nModel: \(car.model)\nYear: \(car.year)\nPower: \(car.power) hp."
        }
    
    
}
