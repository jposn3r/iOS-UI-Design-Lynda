//
//  ViewController.swift
//  UIDesign
//
//  Created by Jacob Posner on 12/21/16.
//  Copyright © 2016 Kaizen Human. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    @IBAction func switchDidChange(_ sender: UISwitch) {
        if !sender.isOn {
            myIndicator.stopAnimating()
        }
        else {
            myIndicator.startAnimating()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

