//: [Previous](@previous)

import Foundation

func genericArrayLooping<T>(randomArray: [T]) {
    
    for i in randomArray {
        
        print(i)
    }
}

genericArrayLooping(randomArray: [1,2,3,4,5,6])
genericArrayLooping(randomArray: ["a","b", "c", "d", "e", "f"])
genericArrayLooping(randomArray: [0.0, 1.0, 2.0, 3.0])

