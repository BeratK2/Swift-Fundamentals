import Foundation


//This is a closure(everything after the in keyword will be returned)
let sayHello = { (name: String) -> String in
    "Hi, \(name)"
}

let hi = sayHello("Berat")
print(hi)



//Print names in team that start with T
let team = ["Gloria", "Suzy", "Tina", "Tiff"]

let onlyT = team.filter{ $0.hasPrefix("T")
} 

print(onlyT)