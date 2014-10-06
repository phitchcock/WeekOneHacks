//
//  WheeledVehicle.swift
//  Vehicle
//
//  Created by Peter Hitchcock on 10/3/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class WheeledVehicle: NSObject {

    var currentSpeed:Int = 0

    func stop() {
        self.currentSpeed = 0
    }

    func numberOfWheels(amount:Int) -> Int {
        println("\(amount)")
        return amount

    }

    func accelerateByAmount(amount:Int) -> Int {

        self.currentSpeed = self.currentSpeed + amount
        println("\(currentSpeed)")

        return amount
    }
   
}
