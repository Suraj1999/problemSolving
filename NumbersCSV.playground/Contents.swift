import Cocoa

var greeting = "Hello, playground"

func loadCSV(from csvFile: String){
    
    // check in the main bundle if file exist or not with the .csv extension
    
    guard let file = Bundle.main.path(forResource: csvFile, ofType: "csv") else {
        return
    }
    
    // if exist then convert it into a long string
    
    var longStr = ""
    
    do {
        longStr = try String(contentsOfFile: file)
    } catch{
        print(error)
        return
    }
    
    // seperate the long string into rows by using "\n" as a rows eliminator
    
    var rows = longStr.components(separatedBy: "\n")
    
    // remove the first row as it is a header row which contains heading
    
    rows.removeFirst()
    
    // from each row seperate it into coloumns and sum them
    for row in rows {
        
        let col = row.components(separatedBy: ",")
        
        // itearte the first column and then add all numbers
        var sum = 0
        for eachCol in col {
            sum = sum + Int(eachCol)!
        }
        print(sum)
    }
    
}

loadCSV(from: "numbers")
