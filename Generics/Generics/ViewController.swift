//
//  ViewController.swift
//  Generics
//
//  Created by Sushant Ubale on 11/18/18.
//  Copyright © 2018 Sushant Ubale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //stringarray(sArray: ["a","b","c","d"])
       // intArray(iArray: [1,2,3,4,5])
        genericsArray(anyArray: ["a","b","c","d"])
        genericsArray(anyArray: [1,2,3,4,5])
    }

    func stringarray(sArray: [String]) {
        
        for i in sArray {
            print(i)
        }
    }
    
    func intArray(iArray: [Int]) {
        
        for i in iArray {
            print(i)
        }
    }
    
    func genericsArray<T>(anyArray: [T]) {
        
        for i in anyArray {
            print(i)
            
        }
    }
}


