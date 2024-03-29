import Cocoa



// Two Sun

//Description - arr = [2,7,9,11] target = 9
// output = [0,1]

// Method 1

func twoSum(_ arr: [Int], target: Int) -> [Int]?{
    
    var newArr: [Int] = []
     
    for (ind, val) in arr.enumerated(){
        
         var x = target - val
         var firstIndex = ind
        
        for next in ind+1..<arr.count{
            if arr[next] == x {
                newArr.append(firstIndex)
                newArr.append(next)
                return newArr
            }
        }
        
    }
    return nil
}


if let final = twoSum([2,7,9,11], target: 20) {
    print(final)
} else {
    print("no combination exist")
}


// Method 2

func twoSum_1(_ arr: [Int],  target: Int) ->[Int] {
    
    for i in 0..<(arr.count){
        var firstVal = arr[i]
        
        for j in i+1..<(arr.count){
            
            if firstVal + arr[j] == target {
                return [i,j]
            }
        }
    }
    return []
}


print(twoSum_1([2,7,9,11], target: 16))


// MARK: Naive Solution
// Method 3


// https://holyswift.app/two-sum-problem-in-swift/
// We are creating a empty map dictionary
// key, val consist of key consist element in an array while value consist index of it ---- Important

func twoSum_2(_ arr: [Int], target: Int) ->[Int] {
    
    var map: [Int:Int] = [:]
    
    for (i, val) in arr.enumerated() {
        
        let diff = target - val
        
        if let j = map[diff]{
            return [j,i]
        }
        map[val] = i
    }
    return []
}

print(twoSum([2,7,9,11], target: 16) ?? "")
