import UIKit

        // ***************Most Common element*******************//

var arrayOfColors = ["red", "green", "blue", "blue", "blue", "blue", "red", "red", "red", "red", "green"]


func mostCommonElement(array: [String]) -> (String, Int) {
    
    var mostCommonElement: [String: Int] = [:]
    for color in array {

        if let count = mostCommonElement[color] {
            mostCommonElement[color]  = count + 1
        }
        else {
            mostCommonElement[color] = 1
        }
    }
    let mostOccured = mostCommonElement.values.max()
    var mostOccuredColor = ""
    for j in mostCommonElement.enumerated() {

        if j.element.value == mostOccured {
            mostOccuredColor = j.element.key
        }
    }
    return (mostOccuredColor, mostOccured!)
}
// print(mostCommonElement(array: arrayOfColors))


                // ***************Two-Sum Problem *************** //

var arrayOfNumbers = [1,3,6,9,12,69,15,100]

func bruteForce(array: [Int], value: Int) -> (Int, Int) {
    
    for i in array {
        
        for j in array where j != i {
            if i + j == value {
                return (i,j)
            }
        }
    }
    return (0,0)
}

//print(bruteForce(array: arrayOfNumbers, value: 15))

func binarySearchSearch(array:  [Int], value: Int) {
    
    for i in 0..<array.count {
        let compliment = value - array[i]
        
        var newArray = array
        newArray.remove(at: i)
        let  (boolValue, indexValue) = findCompliment(newArray, compliment)
        print("num: \(array[i]) - \(boolValue)")
        if boolValue == true {
            print(indexValue)
        }
    }
}

func findCompliment(_ fArray: [Int],_ fValue: Int) -> (Bool,Int) {
    
    var indexValue = 0
    
    for i in fArray {
        if i == fValue {
            indexValue = i
            return (true, indexValue)
        }
        else {
             return (false, indexValue)
        }
    }
    return  (true, indexValue)
    
}
//print(binarySearchSearch(array: arrayOfNumbers, value: 15))



// *************** Factorial *************** //

func normalFacial(num: UInt) -> UInt {
    
    var product: UInt = 1
    for i in 1...num {
        product = product * i
    }
    return product
}

//print(normalFacial(num: 3))

func recursiveFactorial(num: UInt) -> UInt {
    
    if num == 0 {
        return 1
    }
    return num * recursiveFactorial(num: num - 1)
    
}

//print(recursiveFactorial(num: 5))

// *************** Wrapping an Array *************** //

var trackList = ["a", "b", "c", "d", "e"]
var selectedTrack = "d"
var newTrackList = [String]()
var remainingTrackList = [String]()

for track in trackList {
    if track == selectedTrack || newTrackList.count > 0 {
        newTrackList.append(track)
    }
    else {
        remainingTrackList.append(track)
    }
    let finalTrackList = newTrackList + remainingTrackList
    //print(finalTrackList)
}

// *************** Flattening Nested Arrays using Recursion ***************


func flattenedArray(values: [Any]) -> [Any] {
    
    var myFlattenedArray = [Any]()
    for value in values {
        if value is Int {
            myFlattenedArray.append(value)
        } else if value is [Any] {
            
            let recursiveValues = flattenedArray(values: value as! [Any])
            for num in recursiveValues {
                myFlattenedArray.append(num)
                
            }
            
        }
    }
    
    return myFlattenedArray
}
// print(flattenedArray(values: [1,[2]]))

