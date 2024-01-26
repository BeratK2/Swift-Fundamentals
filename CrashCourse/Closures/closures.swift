import Foundation

/*
func add(_ lhs: Int, _ rhs: Int) -> Int { 
    lhs + rhs
}
*/



//Closure is a variable that is assigned to a function. In this case it takes in 2 variables and returns 1
let add: (Int, Int) -> Int = {
    (lhs: Int, rhs: Int) -> Int in
    lhs + rhs //Return this
}

let sum = add(20,30)
print(sum)



//Trailing closure syntax(doesn't need argument name) 
//Custom add doesn't do the addition itself, it delegates that to another function 
//Don't need to write Int and Int over and over again
func customAdd(
    _ lhs: Int,
    _ rhs: Int,
    using function: (Int, Int) -> Int
) -> Int {
    function(lhs, rhs)
}

let customAddition = customAdd(20, 30) {(lhs, rhs) in lhs + rhs}
let customAdditionWithDollars = customAdd(10, 3) {$0 + $1}
print(customAddition)
print(customAdditionWithDollars)



//Sort array with closure
let ages = [30, 20, 19, 40]
ages.sorted(by: >) //Descending
ages.sorted(by: <) //Ascending



//Leading closure syntax
func customAdd2(
    using function: (Int, Int) -> Int,
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    function(lhs, rhs)
}

let customAddition2 = customAdd2(using: {$0 + $1}, 5, 13)



func add10To(value: Int) -> Int {
    value + 10
}

func add20To(value: Int) -> Int {
    value + 20
}

func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int {
    function(value)
}

let ten = doAddition(on: 20, using: add10To(value:))
let twenty = doAddition(on: 20, using: add20To(value:))
print(ten)
print(twenty)