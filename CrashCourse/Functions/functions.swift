import Foundation

//Function without argument
func noArgumentsAndNoReturnValue(){
    print("I don't know what's happening")
}

noArgumentsAndNoReturnValue()



//Function with argument
func plusTwo(value: Int){
    let newValue = value + 2
    print(newValue)
}

plusTwo(value: 30)



//Will return this value without return statement
func newPlusTwo(value: Int) -> Int{
    value + 2
} 

print(newPlusTwo(value: 30))



//Function with 2 arguments
func customAdd(
    value1: Int,
    value2: Int
) -> Int {
    value1 + value2
}

let customAdded = customAdd(value1: 10, value2: 20)
print(customAdded)



//Function with 2 arguments without passing argument names 
func customMinus(
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    lhs - rhs
}

let customSubtracted = customMinus(20, 10)
print(customSubtracted)



//Discardable function (do not need to assign to a variable)
@discardableResult
func myCustomAdd(
    _ lhs: Int,
    _ rhs: Int
) -> Int{
    lhs + rhs
}

myCustomAdd(20, 30)



//Define a function within a function
func doSomethingComplicated(
    with value: Int
) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value: value + 3)
}

let complicated = doSomethingComplicated(with: 30)
print(complicated)



//Function for string
func getFullName(
    firstName: String = "Berat",
    lastName: String = "Kales"
) -> String {
    "\(firstName) \(lastName)"
}




