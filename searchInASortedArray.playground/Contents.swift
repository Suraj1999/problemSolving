import Cocoa

// https://www.youtube.com/watch?v=5qGrJbHhqFs
// https://www.callicoder.com/rotated-sorted-array-search/
func searchInSortedArray(_ arr: [Int], key: Int) -> Int? {
    
    var low = 0
    var high = arr.count-1
    
    while low <= high {
        var mid = (low + high)/2
        
        if arr[mid] == key {
            return mid
        }
        
        if arr[low] < arr[mid] {
            if (key >= arr[low] && key <= arr[mid]){
                high = mid-1
            } else {
                low = mid+1
            }
        }
        else {
            if (key >= arr[mid] && key <= arr[high]) {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
    }
    return nil
}

print(searchInSortedArray([15, 18, 21, 3, 6, 8, 12], key: 12) ?? "not found")
