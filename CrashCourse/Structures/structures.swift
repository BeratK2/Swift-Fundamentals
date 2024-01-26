import Foundation


//Structs are like classes/objects but don't need constructors (structures can not have subclasses) 
struct Person{
    let name: String
    let age: Int
}

let foo = Person(name: "Foo", age: 20) //Instantiate a struct
print(foo.name)
print(foo.age)



//Create constructor for struct
struct CommodoreComputer{
    let name: String
    let manufacturer: String
    init(name: String){
        self.name = name
        self.manufacturer = "Commodore" //Only pass in name when instantiated, manufacturer will always be Commodore
    }
}

let c64 = CommodoreComputer(name: "C64")
print(c64.name)
print(c64.manufacturer)



//Computed properties
struct Person2 { 
    let firstName: String
    let lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

let fooBar = Person2(firstName: "Foo", lastName: "Bar")
print(fooBar.fullName)



//Mutable Structure Function
struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int){
        currentSpeed = speed
    }
}

var mutableCar = Car(currentSpeed: 10)
mutableCar.drive(speed: 20)
print(mutableCar.currentSpeed)




struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike { Bike(
        manufacturer: self.manufacturer,
        currentSpeed: currentSpeed
    )
    }
}

let bike1 = Bike(manufacturer: "HD", currentSpeed: 20)
var bike2 = bike1.copy(currentSpeed: 30)
print(bike1.currentSpeed)
print(bike2.currentSpeed)