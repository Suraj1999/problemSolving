import UIKit

var greeting = "Hello, playground"


// using XOR properties where I first find the max and min of an array to get a missing value
// a ^ 0 = a
// a ^ a = 0

func missingNumberInArray(_ arr: [Int]) {
    
    var res = 0
    
    guard let max = arr.max(),
          let min = arr.min() else {
        return
    }
    // XOR of all number between max and min
    for val in min...max {
        res = res ^ val
    }
    // XOR of a number in an array with the result of all number between max and min so to find a missing number
    for val in arr {
        res = res ^ val
    }
    
    print(res)
}

missingNumberInArray([0,3,1,2,4,6])
