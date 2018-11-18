//
//  SomeServiceClass.swift
//  Dependency Injection
//
//  Created by Sushant Ubale on 11/17/18.
//  Copyright © 2018 Sushant Ubale. All rights reserved.
//

import Foundation

class SomeServiceClass {
    
    private init() {}
    
    static var sharedInstance = SomeServiceClass()
    
    func doSomePrinting() {
        
        print("Done something, yeahhhhhh!!!!")
    }
}
