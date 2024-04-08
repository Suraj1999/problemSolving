import Cocoa

// https://www.geeksforgeeks.org/binary-search/


func binarySearch(_ arr: [Int], key: Int ) -> Int? {
    
    var low = 0
    var high = arr.count-1
    
    while low <= high {
        
        var mid = low + (high - low)/2
        
        if arr[mid] == key {
            return mid
        }
        else if arr[mid] > key {
            high = mid - 1
        }
        else {
            low = mid + 1
        }
    }
    
    return nil
}

print(binarySearch([2, 5, 8, 12, 16, 23, 38, 56, 72, 91], key: 91) ?? "not found" )
