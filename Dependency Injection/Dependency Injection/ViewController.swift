//
//  ViewController.swift
//  Dependency Injection
//
//  Created by Sushant Ubale on 11/17/18.
//  Copyright © 2018 Sushant Ubale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var someServiceClass: SomeServiceClass
    
    init(someServiceClass: SomeServiceClass) {
        
        self.someServiceClass = someServiceClass
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        view.backgroundColor = .red
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        someServiceClass.doSomePrinting()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

