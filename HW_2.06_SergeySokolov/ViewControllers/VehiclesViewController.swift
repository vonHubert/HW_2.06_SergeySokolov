//
//  VehiclesViewController.swift
//  HW_2.06_SergeySokolov
//
//  Created by MacBook Air 13 on 09.11.2022.
//

import UIKit

class VehiclesViewController: UIViewController {

    @IBOutlet var vehicleDataLabel: UILabel!
    
    var car = Car.getCarData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vehicleDataLabel.text = "Brand: \(car.brand)\nModel: \(car.model)\nYear: \(car.year)\nPower: \(car.power) hp."
        }
}
