//
//  ViewController.swift
//  MinoityReport-SwiftSecondTry
//
//  Created by Peter Hitchcock on 10/2/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var center:CGPoint!

    //IBOutlets
    @IBOutlet weak var theFuture: UILabel!
    @IBOutlet weak var thePres: UILabel!

    //IBActions
    @IBAction func onDrag(panGesture: UIPanGestureRecognizer) {

        var point: CGPoint = panGesture.locationInView(self.view)
        self.theFuture.center = point

        if (panGesture.state == UIGestureRecognizerState.Ended) {
            UIView.animateWithDuration(1.0, animations: { () -> Void in
                self.theFuture.center = self.center
            })

        } else {

            if (CGRectContainsPoint(self.thePres.frame, point)) {
                self.theFuture.backgroundColor = UIColor.redColor()
                self.theFuture.text = "the future is happenint"
                self.theFuture.sizeToFit()
            }
        }

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.center = self.theFuture.center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

