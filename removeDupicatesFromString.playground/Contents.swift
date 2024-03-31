import Cocoa

// Method 1

func removeDuplicate(_ str: String){
    
    var newStr: String = ""
    
    for char in str {
        if !newStr.contains(char){
            newStr.append(char)
        }
    }
    print(newStr)
  
}

removeDuplicate("programming")



