import Cocoa

func countVowels(_ str: String) -> (Int, Int){
    
    var isVowel = "aeiouAEIOU"
    var vowelCount = 0
    var consCount = 0
    
    for char in str {
        if isVowel.contains(char){
            vowelCount += 1
        } 
        else if char.isLetter {
            consCount += 1
        }
                    
    }
    
    return (vowelCount, consCount)
}

countVowels("my name is Suraj")
