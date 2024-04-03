import Cocoa

// Method 1:

func palindromeStringh(_ str: String) -> Bool{
    
    var newStr: String = ""
    
    for char in str {
        newStr = String(char) + newStr
    }
    
    if str == newStr {
        return true
    } else{
        return false
    }
}

palindromeStringh("malayalam")



// Method 2:

func palindromeStringh_1(_ str: String)->Bool{
    
    var newStr = String(str.reversed())
    
    return newStr == str
}

palindromeStringh_1("radar")




//Method 3:

func palindromeString_2(_ str: String) -> Bool {
    var charArray = Array(str)
    var cnt = charArray.count - 1
    var i = 0
    
    while i < cnt {
        
        if charArray[i] != charArray[cnt] {
            return false
        }
        
        i = i+1
        cnt = cnt - 1
    }
    
    return true
}

palindromeString_2("aaabaaa")

