import Foundation

var score: Double = 0

let player: String = "Mike"
let num: Int = 13
let isEnabled: Bool = true
let albums: Array<String> = ["Red", "Fearless"]
let user: Dictionary<String, String> = ["name": "Berat"]
let user2: [String: String] = ["name": "Jeff"]//Also a dict
let albums2: [String] = ["Donda", "Honda"]//Also an array



//Tuples return a fixed number of items of a specific type
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Berat", lastName: "Kales")
}

let user = getUser()
print("Name \(user.firstname) \(user.lastName)")