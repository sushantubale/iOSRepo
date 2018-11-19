//: [Previous](@previous)

import Foundation

func calculator(a: Int, b: Int, closure: (Int, Int) -> Int) {
    
    closure(a, b)
}

func add(_ a: Int,_ b: Int) -> Int {
    
    return a + b
}

func minus(a: Int, b: Int) -> Int {
    
    return a - b
}
func multiply(a: Int, b: Int) -> Int {
    
    return a * b
}
func divide(a: Int, b: Int) -> Int {
    
    return a / b
}


calculator(a: 10, b: 20) { (a, b) -> Int in
    return a + b
    print(a,b)
}
calculator(a: 100, b: 50) { (a, b) -> Int in
    return minus(a: 10, b: 20)
    
}



