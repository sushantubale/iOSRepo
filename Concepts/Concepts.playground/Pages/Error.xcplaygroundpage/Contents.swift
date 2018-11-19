//: [Previous](@previous)

import Foundation

enum errorCases: Error {
    
    case maxSpeedingLimit
    case minSpeedingLimit
}

func calculateSpeedingTickets(speed: Int) throws {
    
    if speed < 45 {
throw errorCases.minSpeedingLimit
    }
    else if speed > 100 {
        throw errorCases.maxSpeedingLimit
    }
}


do {
    let errorCase = try calculateSpeedingTickets(speed: 24)
}catch  errorCases.minSpeedingLimit {print("minimum speed")}
catch errorCases.maxSpeedingLimit {print("maximum speed")}


