import Cocoa

// Method: 1

func anagramString(_ str1: String, _ str2: String) ->Bool{
    
    let cnt1 = str1.count
    let cnt2 = str2.count
    
    if cnt1 != cnt2 {
        return false
    }
    let sort1 = String(str1.sorted())
    let sort2 = String(str2.sorted())
    
    if sort1 == sort2 {
        return true
    }
    
    return false
}

anagramString("gupta",  "atpug")


// Method: 2

func anagramString_1(_ str1: String, _ str2: String) ->Bool{
    
    let cnt1 = str1.count
    let cnt2 = str2.count
    
    if cnt1 != cnt2 {
        return false
    }
    
    var charArray1 = Array(str1)
    var charArray2 = Array(str2)
    
    charArray1 = charArray1.sorted()
    charArray2 = charArray2.sorted()
    
    if charArray1 == charArray2 {
        return true
    }
    return false
}

anagramString_1("listen", "sileng")


// Method 3:
// https://forums.swift.org/t/valid-anagram/53585


func anagramString_2(_ s1: String, _ s2: String) -> Bool{
    var s1Dict: [Character : Int] = [:]
    
    for char in s1 {
        s1Dict[char, default: 0] += 1
    }
    
    var s2Dict: [Character: Int] = [:]
    
    for char in s2 {
        s2Dict[char, default: 0] += 1
    }
    
    return s1Dict == s2Dict
}

anagramString_2("listen", "silent")
