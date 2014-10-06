//
//  ViewController.swift
//  IntergalacticTravelSwift
//
//  Created by Peter Hitchcock on 9/30/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        var destinationViewController: VacationViewController = segue.destinationViewController as VacationViewController

        destinationViewController.title = sender?.currentTitle

        if segue.identifier == "RedDwarfSegue" {

            destinationViewController.vacationImageView.image = UIImage(named: "redStar.jpg")
            destinationViewController.view.backgroundColor = UIColor.redColor()

        } else {

            destinationViewController.view.backgroundColor = UIColor.blueColor()
            destinationViewController.vacationImageView.image = UIImage(named: "blueStar.jpg")
        }

    }
    


}

