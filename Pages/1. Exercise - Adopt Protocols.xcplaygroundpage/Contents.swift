/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human: Equatable, CustomStringConvertible, Comparable {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    var description: String {
        return "Human(Name: \(name), Age: \(age))"
    }
    
    
    static func ==(lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    

}

var human1 = Human(name: "John", age: 44)
var human2 = Human(name: "Jane", age: 53)
var human3 = Human(name: "John", age: 24)


print("Human One: \(human1), Human Two: \(human2)")

if human1 != human2 {
    print("These are two different humans!")
}

if human1 == human3 {
    print("Same human!")
}

var human4 = Human(name: "Jim", age: 25)
var human5 = Human(name: "Jose", age: 33)
var human6 = Human(name: "Mila", age: 45)

var people = [human1,human2,human3,human4,human5,human6]
print("\(people)")
var sortedPeople = people.sorted(by: <)
print("\(sortedPeople)")


/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */


/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */


/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */


//: page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
