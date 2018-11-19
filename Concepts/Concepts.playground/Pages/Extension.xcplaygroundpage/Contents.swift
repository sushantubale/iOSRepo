//: [Previous](@previous)

import Foundation

// Extension is used to add extra functionality to a class, enum, and struct
// Adding extra functions in extension makes it optional


class Calculate {
   
    func test() {
        print("test")
    }
}


class NewTest: Calculate {
    
    override func test() {
        
    }
    
}



extension Calculate {
    
    func add() {
        print("add")
    }
}

var newClass = Calculate()
newClass.add()
newClass.test()

