import Cocoa

var greeting = "Hello, playground"

//Method 1:

func duplicateInArray(_ nums: [Int]) ->Int {
    
    var dict: [Int: Int] = [:]
    
    for num in nums {
        if dict[num] != nil {
            return dict[num]!
        } else {
            dict[num] = num
        }
    }
    return Int.min
}

duplicateInArray([3,1,3,4,2])


// Method 2:
// without extra spaces
// https://www.youtube.com/watch?v=mcSYHTNCtUc&t=185s

func duplicateInArray_1(_ nums: [Int]) -> Int {
    
    var slow = nums[0]
    var fast = nums[0]
    
    while(true) {
        slow = nums[slow]
        fast = nums[nums[fast]]
        
        if slow == fast {
            break
        }
    }
    
    slow = nums[0]
    while slow != fast {
        slow = nums[slow]
        fast = nums[fast]
    }
    
    return slow
}

duplicateInArray_1([1,2,3,4,5,6,7,2,8,9])

