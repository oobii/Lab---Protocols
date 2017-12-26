/*:
 ## App Exercise - Printable Workouts
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 The `Workout` objects you have created so far in app exercises don't show a whole lot of useful information when printed to the console. They also aren't very easy to compare or sort. Throughout these exercises, you'll make the `Workout` class below adopt certain protocols that will solve these issues.
 */
class Workout: CustomStringConvertible, Equatable, Comparable {
    var distance: Double
    var time: Double
    var identifier: Int
    
    init(distance: Double, time: Double, identifier: Int) {
        self.distance = distance
        self.time = time
        self.identifier = identifier
    }
    
    var description: String {
        return "Workout(distance: \(distance), time: \(time), identifier: \(identifier))"
    }
    
    static func == (lhs: Workout, rhs: Workout) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    
    static func < (lhs: Workout, rhs: Workout) -> Bool {
        return lhs.identifier < rhs.identifier
    }

}

var workout1 = Workout(distance: 1000, time: 300, identifier: 1)
print("This is a workout One: \(workout1)")
var workout2 = Workout(distance: 2000, time: 530, identifier: 3)

if workout1 != workout2 {
    print("Differet workouts")
}

var workout3 = Workout(distance: 4000, time: 1100, identifier: 5)
var workout4 = Workout(distance: 1000, time: 301, identifier: 2)
var workout5 = Workout(distance: 2200, time: 530, identifier: 4)

var workouts = [workout1, workout2 ,workout3, workout4, workout5]
var sortedWorkouts: [Workout]
sortedWorkouts = workouts.sorted(by: <)
print("\(sortedWorkouts)")

/*:
 Make the `Workout` class above conform to the `CustomStringConvertible` protocol so that printing an instance of `Workout` will provide useful information in the console. Create an instance of `Workout`, give it an identifier of 1, and print it to the console.
 */


/*:
 Make the `Workout` class above conform to the `Equatable` protocol. Two `Workout` objects should be considered equal if they have the same identifier. Create another instance of `Workout`, giving it an identifier of 2, and print a boolean expression that evaluates to whether or not it is equal to the first `Workout` instance you created.
 */


/*:
 Make the `Workout` class above conform to the `Comparable` protocol so that you can easily sort multiple instances of `Workout`. `Workout` objects should be sorted based on their identifier.
 
 Create three more `Workout` objects, giving them identifiers of 3, 4, and 5, respectively. Then create an array called `workouts` of type `[Workout]` and assign it an array literal with all five `Workout` objects you have created. Place these objects in the array out of order. Then create another array called `sortedWorkouts` of type `[Workout]` that is the `workouts` array sorted by identifier.
 */


//: [Previous](@previous)  |  page 2 of 5  |  [Next: Exercise - Create a Protocol](@next)
