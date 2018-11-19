//
//  ViewController.swift
//  Getter Setter
//
//  Created by Sushant Ubale on 11/18/18.
//  Copyright © 2018 Sushant Ubale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var adddButton: UIButton!
    var myValue: Double {
        get {
            return Double(myLabel.text!)!
        }
        set {
            myLabel.text = "\(newValue)"
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func addButtonclicked(_ sender: UIButton) {
        
        add()
    }
    
    func add() {
        
        myValue = myValue + 2
    }
}

