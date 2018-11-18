//
//  ViewController.swift
//  Protocol
//
//  Created by Sushant Ubale on 11/17/18.
//  Copyright © 2018 Sushant Ubale. All rights reserved.
//

import UIKit

protocol Cryptocurrency {
    var name: String {get}
    var price: Int {get set}
    mutating func changePrice()
    init(name: String)
}

protocol Extensions{
//  func changeColor()
    
}

class MyButton: Extensions {
    
//    func changeColor() {
//        print("change color to white")
//    }
}

class MyLabel: Extensions {
    
    
//    func changeColor() {
//        print("change color to white")
//    }
}

extension Extensions {
    
    // This becomes a optional method now.
    func changeColor() {
        
        print("change color to white")
    }
}
class Bitcoin: Cryptocurrency {
    var name: String
    
    var price: Int = 10000
    
    func changePrice() {
        print(price)
    }
    
    required init(name: String) {
        self.name = name
    }
    
    
    
}

struct Litecoin: Cryptocurrency {
    var name: String
    
    var price: Int = 800
    
    func changePrice() {
        print(price)
    }
    
    init(name: String) {
        self.name = name
    }
    
    
    
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var cryptoCurrencies: [Cryptocurrency] = [Cryptocurrency]()
        let btc = Bitcoin(name: "btc")
        let lte = Litecoin(name: "eth")
        cryptoCurrencies.append(btc)
        cryptoCurrencies.append(lte)
        
        
        print(cryptoCurrencies)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

