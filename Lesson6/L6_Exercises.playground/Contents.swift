//: ## Lesson 6 Exercises - Classes, Properties and Methods

import UIKit

//: __Problem 1__
//:
//: __1a.__
//: The compiler is complaining because the class Animal has no initializers. Write an init method for the Animal class and quiet this error. Include a mechanism to initialize the length of the Animal's tail using the Tail struct provided.
struct Tail {
    let lengthInCm: Double
}

class Animal {
    
    var species: String = ""
    let tail: Tail
    
    init(tail:Tail) {
        self.tail = tail
    }
}
//: __1b.__
//: Instantiate and initialize a few different Animals.
var rabbit = Tail(lengthInCm: 1)
//: __Problem 2__
//:
//: Below are the beginnings of the Peach class.
class Peach {
//    var varieties:[Peach]
    var variety: String
    
    // Softness is rated on a scale from 1 to 5, with 5 being the softest
    var softness: Int
    
    init(variety: String, softness: Int) {
        self.variety = variety
        self.softness = softness
    }
    
    func ripen()-> String{
        softness += 1
    
        if(softness == 5){
            print("ripen")
            return "ripen"
        }
        return "non ripen"
    }
    
}
//: __2a.__
//: Add a type property to the Peach class called "varieties". It should hold an array of different types of peaches.
//:
//: __2b.__
//: Add an instance method called ripen() that increases the value of the stored property, softness, and returns a string indicating whether the peach is ripe.
//:
//: __2c.__
//: Create an instance of the Peach class and call the method ripen().
var peach = Peach(variety: "red",softness: 2)
peach.ripen()
peach.ripen()
peach.ripen()



//: __Problem 3__
//:
//: __3a.__
//:Add the computed property, "cuddlability", to the class, FluffyDog. Cuddlability should be computed based on the values of the stored properties, fluffiness and droolFactor.
var theFluffiestDog = UIImage(named:"fluffyDog")!

class FluffyDog {
    let name: String
    let fluffiness: Int
    let droolFactor: Int
    let cuddlability:Bool

    
    init(name: String, fluffiness: Int, droolFactor: Int, cuddlability:Bool
) {
        self.name = name
        self.fluffiness = fluffiness
        self.droolFactor = droolFactor
        self.cuddlability = cuddlability
    }
    
    func chase(_ wheeledVehicle: String)-> String {
        return "Where are you going, \(wheeledVehicle)? Wait for me! No, don't go! I will catch you!"
    }
}
//: __3b.__
//: Instantiate and initialize an instance of the class, FluffyDog. Use it to call the method, chase().
var Alex = FluffyDog(name: "Alex",fluffiness: 1,droolFactor: 2,cuddlability: true)
Alex.chase("KIA")

//: __Problem 4__
//:
//: __4a.__
//: Write an instance method, bark(), that returns a different string based on the value of the stored property, size.
enum Size: Int {
    case small
    case medium
    case large
}

class ChattyDog {
    let name: String
    let breed: String
    let size: Size
    
    init(name: String, breed: String, size: Size) {
        self.name = name
        self.breed = breed
        self.size = size
    }
    
    func bark()->String{
        if size == .small{
            return "sswww..."
        }else if size == .medium{
            return "mmwoowowo"
        }else{
            return "woofwofowfk"
        }
    
    }
    
    
}
//: __4b.__
//: Create an instance of ChattyDog and use it to call the method, bark().
var big = ChattyDog(name: "biggi", breed: "meat", size: .large)
big.bark()


//: __4c.__
//: Rewrite the method, bark(), as a type method and rename it speak(). Call your type method to test it out.

//: __Problem 5__
//:
//:__5a.__
//: Write an initialization method for the House class below.
enum Quality {
    case poor, fair, good, excellent
}

enum NaturalDisaster {
    case earthquake
    case wildfire
    case hurricane
}

class House {
    var numberOfBedrooms: Int = 0
    let location: Quality
    
    init(location: Quality, naturalDisaster:NaturalDisaster) {
        self.location = location
    }
    
    func willStayStanding(_ naturalDisaster:NaturalDisaster)-> Bool {
        switch naturalDisaster {
        case .earthquake:
            return true
        case .wildfire:
            return true
        case .hurricane:
            return false
        }
    }
    
    func worthyOfAnOffer(location :Quality, numberOfBedrooms: Int) -> Bool {
        if(location == .excellent && numberOfBedrooms > 100){
            return true
        }else{
            return false
        }
    }
}

//: __5b.__
//: Create an instance of the House class and use it to call the method, willStayStanding().  This method takes in a parameter of type NaturalDisaster and return a Bool indicating whether the house will stay standing in a given natural disaster.
var house = House(location: .poor, naturalDisaster: .earthquake)
house.willStayStanding(.earthquake)
//: __5c.__
//: Add a computed property called, "worthyOfAnOffer". This property should be a Bool, whose return value is dependent upon some combination of the stored properties, numberOfBedrooms and location.






