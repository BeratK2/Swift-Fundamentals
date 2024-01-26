import Foundation

let myName = "Berat"
let myAge = 22
let yourName = "Joe"
let yourAge = 21

if myName == "Berat"{
    print("Your name is \(myName)")
}
else{
    print("Ig I'm wrong")
}

if myName == "Berat"{
    print("I guessed correct")
}
else if myName == "Joe"{
    print("Are you Joe?")
}
else {
    print("I give up!")
}



if myName == "Berat" && myAge == 22{
    print("Name is Berat and you're 22")
}
else if myAge == 22{
    print("Only guessed age right")
}
else{
    print("I'm just wrong")
}



if myAge == 22 || myName == "Berat"{
    print("One or both of these is correct")
}