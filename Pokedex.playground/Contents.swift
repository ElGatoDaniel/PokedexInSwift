import UIKit

//Here i create the struct

struct Pokemon {
    var num: Int
    var name: String
    var type: [String]

    init(num: Int, name: String, type: [String]) {
        self.num = num
        self.name = name
        self.type = type
    }

    
// This displays the data
    
     func returnData() -> String {
        var result = "Hello, I am \(name), my number is #\(num)"

        if type.count > 1 {
            result += " and my types are \(type[0]) and \(type[1])."
        } else {
            result += " and my type is \(type[0])."
        }
        
        return result
    }
}

//Testing with one-type Pokémon

var bulbasaur = Pokemon(num: 1, name: "Bulbasaur", type: ["grass"])


//Testing with Charizard, who has 2 types

var charizard = Pokemon(num: 6, name: "Charizard", type: ["fire", "flying"])

print(bulbasaur.returnData())
print(charizard.returnData())
