import Cocoa

var greeting = "Hello, playground"

var json = """
{
"name": "John Doe",
"age": 25,
"city": "New York"
}
"""
    .data(using: .utf8)!

struct Person: Codable {
    let name: String
    let age: Int
    let city: String
}

func jsonToData(){
    do {
        let personDict = try JSONDecoder().decode(Person.self, from: json)
        print("Name : \(personDict.name)")
        print("Age: \(personDict.age)")
        print("City: \(personDict.city)")
        
    } catch {
        print(error.localizedDescription)
    }
    
}

jsonToData()
