//: # Functions

//: ## Global Functions
//: The functions __print__, __min__, __max__, and __abs__ are a few examples of global functions. Check out a complete list of Swift's global functions [here](http://swiftdoc.org/swift-2/func/).
//print
print("I'm a global function!")

//min and max
var initialPrice = 50
var bestOffer = 45
var finalPrice = min(bestOffer, initialPrice)

//abs
var negativeSeven = -7
abs(negativeSeven)


//: ## Methods

//: ## Anatomy of a function

let array = ["A", "13", "B","5","87", "t", "41"]


func sendFunnyMessege(To person:String, With message: String)-> Bool{
    return true
}
//sendFunnyMessege(toPerson: <#T##String#>, withMessege: <#T##String#>)
//sendFunnyMessege(To: <#T##String#>, With: <#T##String#>)

class Arithmetic {
    func sumOfStrings(_ aBunchOfStrings: [String]) -> Int {
        let array = aBunchOfStrings
        var sum = 0
        for string in array {
            if Int(string) != nil {
                let intToAdd = Int(string)!
                sum += intToAdd
            }
        }
        return sum
    }
}

//:    func functionName (argumentLabel ParameterName: parameterType) -> returnType {
//:        statements to execute
//:        return object
//:     }

let stringToReverse = "Mutable or Immutable? That is the question."

func reverseString(_ stringToReverse: String) {
    var reversedString = ""
    for character in stringToReverse {
        reversedString = "\(character)" + reversedString
    }
    print(reversedString)
}

//:    func functionName (externalParameterName localParameterName: parameterType) -> returnType {
//:        statements to execute
//:        return object
//:     }

//: ## Practice writing function definitions 
//: Example 1 - firstCharacterOf
// TODO: Write the firstCharacterOf function here.
func firstCharacterOf(word: String)-> Character {
    return word[word.startIndex]
}

firstCharacterOf(word: "Mom")


//: Example 2 - placeFirstLetterLast
// TODO: Write placeFirstLetterLast function here. 
func placeFirstLetterLast(_ myString: String) -> String {
    var newString = myString
    newString.append(firstCharacterOf(word: myString))
    newString.remove(at: myString.startIndex)
    return newString
}

placeFirstLetterLast("Mom")


//: Example 3 - filterByYear

class MovieArchive {
    
}

var aiThemedMovies = ["Metropolis":1927, "2001: A Space Odyssey":1968, "Blade Runner":1982, "War Games" : 1983, "Terminator": 1984, "The Matrix":1999, "A.I.":2001, "Her": 2013, "Ex Machina":2015]


aiThemedMovies.filter { (movie) -> Bool in
    movie.value > 2000
}
aiThemedMovies.filter { (movie) in
    movie.value > 2000
}
aiThemedMovies.filter { $0.value > 2000 }



var filtered:[String] = []

for (title, year) in aiThemedMovies{
    if(year > 2000){
        filtered.append(title)
    }
    
}
print(filtered)



func filterFriends(_ friends: [String], logic:(String) -> Bool) ->[String]{
    var filtered : [String] = []
    for friend in friends{
        if logic(friend){
            filtered.append(friend)
        }
    }
    return filtered
    
}

var friends = ["Javier","Jintak","Kenta","Rei","Marcelo","Juan","Chin", "Emre", "Charles"]


func unFriendLogic(friend: String) -> Bool{
    if(friend.count < 5){
        return false
    }
    return true
}

//var realFriends = filterFriends(friends, logic: unFriendLogic)
//print(realFriends)


var realFriends = filterFriends(friends) {$0.count < 5}
print(realFriends)
