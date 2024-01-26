import Foundation

//Enumerations are categories of similar values that are named
enum Animals {
    case cat
    case dog
    case rabbit
    case fox
}

let cat = Animals.cat
print(cat)

if cat == Animals.cat{
    print("This is a cat")
}
else if cat == Animals.dog{
    print("This is a dog")
}
else{
    print("This is something else")
}

switch cat{
    case .cat:
        print("This is a cat")
        break
    case .dog:
        print("This is a dog")
        break
    case .rabbit:
        print("This is a rabbit")
        break
    case .fox:
        print("This is a fox")
    default: 
        print("This is something else")
}



enum Shortcut{
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(
    path: URL(string: "https://apple.com")!
)

switch wwwApple{
    case let .fileOrFolder(path: path, name: name): //Can put a single let in the case itself or individual for each argument
        print(path)
        break
    case .wwwUrl(path: let url):
        print(url)
        break
    case .song(artist: let artist, songName: let song):
        print(artist)
        break
}



if case let .wwwUrl(path) = wwwApple {
    print(path)
}

let thunder = Shortcut.song(artist: "ACDC", songName: "Thunderstruck")

if case let .song(_, songName: song) = wwwApple {
    print(song)
}



enum Vehicle{
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)

    func getManufacturer() -> String{
    switch self{
        case let .car(manufacturer: manufacturer, _):
            return manufacturer
        case let .bike(manufacturer: manufacturer, _):
            return manufacturer
    } 
}
}


let bike = Vehicle.bike(manufacturer: "HD", yearMade: 1988)
let car = Vehicle.car(manufacturer: "Honda", model: "Pilot")

let man = car.getManufacturer()
let bikeMan = bike.getManufacturer()

print(man)
print(bikeMan)


enum FamilyMember: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

let dad = FamilyMember.father.rawValue //Return 'Dad'



enum FavoriteEmotion: String, CaseIterable {
    case happy = "hap"
    case sad = "oof"
    case mad = "grr"
}

let emotions = FavoriteEmotion.allCases
let rawEmotions = FavoriteEmotion.allCases.map(\.rawValue)

