//
//  ViewController.swift
//  Associated Types
//
//  Created by Sushant Ubale on 11/18/18.
//  Copyright © 2018 Sushant Ubale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let nuericValue = associatedValueExample.Numeric(10)
        switch nuericValue {
        case .Numeric(let number):
            print(number)
        case .Alpha(let characterValue):
            print(characterValue)
        default:
            break
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    

}

enum associatedValueExample {
    
    case Numeric(Int)
    case Alpha(Character)
}
