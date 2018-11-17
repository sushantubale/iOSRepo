//
//  ViewController.swift
//  Passing Data: Segue and Unwind
//
//  Created by Sushant Ubale on 11/17/18.
//  Copyright © 2018 Sushant Ubale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var drinkTextfield: UITextField!
    @IBOutlet weak var drinkLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? FoodViewController else {return}
        destinationVC.foodString = drinkTextfield.text
    }

    @IBAction func unwindSegueFunction(_ sender: UIStoryboardSegue)
    {
        guard let sourceVC = sender.source as? FoodViewController else {return}
      drinkLabel.text   =  sourceVC.foodTextfield.text
}
}
