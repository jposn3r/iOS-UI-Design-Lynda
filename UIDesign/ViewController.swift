//
//  ViewController.swift
//  UIDesign
//
//  Created by Jacob Posner on 12/21/16.
//  Copyright © 2016 Kaizen Human. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let data:[[String]] = [["Item 1", "Item 2", "Item 3"],
                           ["Item A", "Item B", "Item C"],
                           ["Item 4", "Item 5", "Item 6"]]
    
    let subs:[[String]] = [["Sub 1", "Sub 2", "Sub 3"],
                           ["Sub A", "Sub B", "Sub C"],
                           ["Sub 4", "Sub 5", "Sub 6"]]
    
    let headers:[String] = ["Numbered", "Lettered", "Numbered"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Better for performance reasons to use Recyclable cells.
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        //        cell.textLabel?.text = data[indexPath.section][indexPath.row]
        cell.label.text = data[indexPath.section][indexPath.row]
        
        // Setting up Subtitles
        //        cell.detailTextLabel?.text = subs[indexPath.section][indexPath.row]
        // Setting up Images
        //        cell.imageView?.image = UIImage(named: "star")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headers[section]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(data[indexPath.section][indexPath.row])")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

