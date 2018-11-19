//: [Previous](@previous)


import UIKit
import Foundation


// Guard is mostly used for early exit from a statement
// Syntax guard value = values else {return}
// Example

struct PersonInfo {
    
    var firstName: String?
    var lastName: String?
    var age: Int?
}

let person1 = PersonInfo(firstName: "Sam", lastName: "Winchester", age: 28)

let person2 = PersonInfo(firstName: "Dean", lastName: nil, age: 30)

func printPersonInfo(persons: PersonInfo?) {
    
    guard let personFirstName = persons?.firstName, let personLastName = persons?.lastName, let personAge = persons?.age else {return}
    
    print(personFirstName)
    print(personLastName)
    print(personAge)
}

// Will not crash as no values are missing
printPersonInfo(persons: person1)

// Will crash as lastName is missing
printPersonInfo(persons: person2)





