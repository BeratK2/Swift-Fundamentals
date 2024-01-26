import Foundation

let myAge = 20
let yourAge = 21

if myAge > yourAge {
    print("I'm older!")
}
else if yourAge > myAge{
    print("You're older")
}
else{
    print("We're the same age")
}



let letMomsAge = myAge + 30
let doubleAge = myAge * 2

print("Double Age: \(doubleAge)")



//3 Different Types of operators: Unary Prefix(Before one value), Unary Postfix(Behind one value), Binary Infix(In between 2 values)

//Unary Prefix(! is the unary prefix)
let foo = !true

//Unary Postfix(! is the unary postfix)
let name = Optional("Berat")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)

//Binary Infix(+ is the binary infix)
let result = 1 + 2
let names = "Foo" + " " + "Bar"



//Turnary Operator
let age = 14
let message = age >= 18 ? "You're an adult" : "Not an adult"
print(message)
/*
if age >= 18 {
    message = "You're an adult"
} 
else{
    message = "Not an adult"
}
*/