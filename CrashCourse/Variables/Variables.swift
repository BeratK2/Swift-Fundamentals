import Foundation


//Let = Cannot be reassigned or changed(immutable)
//Var = Can be reassigned or changed(mutable)

let firstName = "Berat"
let lastName = "Kales"

//THIS WONT WORK BECAUSE YOU CANT REASSIGN LETS
//firstName = lastName



//Array and appending 
var names = [firstName, lastName]
names.append("Raji")
names.append("The Third")



//Can change foo2 since it's a var but not foo
let foo = "Foo"
var foo2 = foo 



//Define a let of more names and make a copy as a var, then append a new name to the var array called copy
let moreNames = [
    "John", "Joe", "Reagan"
]

var copy = moreNames
copy.append("Jeff")



//Mutable array that defines as a class to mutate the array even though it's a let
let oldArray = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)

oldArray.add("Baz")

//Both new and old arrays will have Qux appended
var newArray = oldArray
newArray.add("Qux")



//SomeNames array will still change since MutableArray will change internally
let someNames = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)

func changeTheArray(_ array: NSArray){
    let copy = array as! NSMutableArray
    copy.add("Bad")
    for element in copy {
        print(element)
    }
}

changeTheArray(someNames)

for element in someNames {
    print(element)
}

