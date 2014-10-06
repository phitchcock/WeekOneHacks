//
//  ViewController.swift
//  SafariTNG-Swift
//
//  Created by Peter Hitchcock on 10/1/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate, UITextFieldDelegate {

    //IBOutlets
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.loadURL()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func webViewDidStartLoad(webView: UIWebView) {

        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
    }

    func webViewDidFinishLoad(webView: UIWebView) {

        UIApplication.sharedApplication().networkActivityIndicatorVisible = false

    }

    func webView(webView: UIWebView, didFailLoadWithError error: NSError) {

        var alert = UIAlertView(title: "title", message: "message", delegate: self, cancelButtonTitle: "cancel")
        alert.show()

    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {

        let urlString = textField.text
        loadHomePage(urlString)

        return true

    }

    func loadHomePage(urlString: NSString) {

        let url = NSURL(string: urlString)
        let urlRequest = NSURLRequest(URL: url)
        self.webView.loadRequest(urlRequest)

    }

    func loadURL() {

        self.loadHomePage("http://www.google.com")
    }


}

