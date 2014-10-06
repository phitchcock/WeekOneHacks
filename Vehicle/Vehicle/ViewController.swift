//
//  ViewController.swift
//  Vehicle
//
//  Created by Peter Hitchcock on 10/3/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var car = WheeledVehicle()
        car.stop()
        car.numberOfWheels(3)
        car.currentSpeed



        println("\(car.currentSpeed)")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

