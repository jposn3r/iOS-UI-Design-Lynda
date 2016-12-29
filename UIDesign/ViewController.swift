//
//  ViewController.swift
//  UIDesign
//
//  Created by Jacob Posner on 12/21/16.
//  Copyright © 2016 Kaizen Human. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func showAlert() {
        // Create the alert
        let alert:UIAlertController = UIAlertController(title: "Dude!", message: "This is an alert breh..", preferredStyle: .actionSheet)
        
        // Define its actions
        let action1:UIAlertAction = UIAlertAction(title: "Click me prease", style: .cancel) { (_:UIAlertAction) in print("Cancelled!")}
        let action2:UIAlertAction = UIAlertAction(title: "Delete", style: .destructive) { (_:UIAlertAction) in print("Deleted!") }
        
        // Add the actions
        alert.addAction(action1)
        alert.addAction(action2)
        
        // Present the view
        self.present(alert, animated: true) { 
            print("present complete")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

