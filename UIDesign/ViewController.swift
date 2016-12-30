//
//  ViewController.swift
//  UIDesign
//
//  Created by Jacob Posner on 12/21/16.
//  Copyright © 2016 Kaizen Human. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate {
    var webView:WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Create the Web View
        webView = WKWebView()
        
        // Add the Web View to the main View
        view.addSubview(webView)
        
        // Loading a file
        // let url:URL = Bundle.main.url(forResource: "page", withExtension: "html")!
        
        
        // Ensures that the view will not use the frame to set its boundaries
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        let width = NSLayoutConstraint(item: webView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1.0, constant: 0)
        
        let height = NSLayoutConstraint(item: webView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1.0, constant: -60)
        
        let top = NSLayoutConstraint(item: webView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 60)
        
        view.addConstraints([width, height, top])
    
    }
    
    @IBAction func goBack(_ sender: Any) {
        webView.goBack()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Define a URL
        let url:URL = URL(string: textField.text!)!
        
        // Create a URLRequest and pass in the URL from above
        let req:URLRequest = URLRequest(url: url)
        
        // Load the URLRequest into the Web View
        webView.load(req)
        textField.resignFirstResponder()
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

