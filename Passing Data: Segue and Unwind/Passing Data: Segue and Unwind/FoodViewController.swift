//
//  FoodViewController.swift
//  Passing Data: Segue and Unwind
//
//  Created by Sushant Ubale on 11/17/18.
//  Copyright © 2018 Sushant Ubale. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {

    @IBOutlet weak var foodTextfield: UITextField!
    @IBOutlet weak var foodLabel: UILabel!
    var foodString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodLabel.text = foodString
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
