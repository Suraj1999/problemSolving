import Cocoa

// Method 1

func reverseString(_ str: String){
    
  var newStr = ""
    
    for val in str{
        newStr = String(val) + newStr
    }
    
    print(newStr)
}

reverseString("my name is suraj gupta")



// Method 2:

func reverseString_1(_ str: String) {
    
    var arrStr = Array(str)
    var i = 0
    var j = arrStr.count - 1
    var temp: Character
    
    while i < j {
        temp = arrStr[i]
        arrStr[i] = arrStr[j]
        arrStr[j] = temp
        i = i + 1
        j = j - 1
    }
    
    print(String(arrStr))
}

reverseString_1("my name is suraj gupta")


// Method 3:
// https://medium.com/@Tiptopgs/reverse-collection-in-swift-4-c09b7b61a0d5

func reverseString_2(_ str: String){
    
    var newStr = String(str.reversed()) // this will return a collecction and now convert it into string
    print(newStr)
    
    for char in str.reversed(){
        print(char, terminator: "") // if you remove terminator then it will print in different line
    }
}

reverseString_2("my name is suraj gupta")

// In Swift, you cannot directly return str.reversed() because reversed() returns a ReversedCollection rather than a String. If you want to return a reversed string, you need to convert the ReversedCollection back into a String
