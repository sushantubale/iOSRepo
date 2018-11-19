//: [Previous](@previous)

import Foundation


// Class is reference types
// Class uses retain count
// Class don't have default initializers
// Values are passed by reference

class myClass {
    var employeeId: Int?
    var employeeDepartment: String?
    init(id: Int?, department: String?) {
        self.employeeId = id
        self.employeeDepartment = department
    }
}

let myFirstPerson = myClass(id: 24, department: "Economics")
let mySecondPerson = myFirstPerson

mySecondPerson.employeeId = 55
print(mySecondPerson.employeeId)
print(myFirstPerson.employeeId)




// Structs are value types
// values are passed by value
// Have a default initializer
// Doesnt create retain count

struct MyCarInfo {
    var nameOfCar: String?
    var colorOfCar: String?
    
    init(nameOfCar: String?, colorOfCar: String?) {
        self.nameOfCar = nameOfCar
        self.colorOfCar = colorOfCar
    }
}


let myFirstcar = MyCarInfo(nameOfCar: "Honda CRV", colorOfCar: "Olive green")
var mySecondCar = myFirstcar
mySecondCar.nameOfCar = "Mercedezzzzzz"

print(mySecondCar.nameOfCar)
print(myFirstcar.nameOfCar)

