#### Lab---Protocols
Protocols<br>
Examples of Protocols:
- CustomStringConvertible
- Equatable
- Comparable

**CustomStringConvertible** has one required computed property, **description**, which returns a String representation of the instance. If you adopt the protocol, you control exactly how your custom types are represented as printable String values.
<br>
```swift

  var description: String {
      return "Shoe(color: \(color), size: \(size), hasLaces: \
      (hasLaces))"
  }
  ```
  
##### Equitable
Fot custom type, you must tell Swift exactly how to compare two instances for equality. You'll do this by adopting the **Equatable** protocol.
The Equatable protocol requires you to provide an implementation for the **==** operator for your custom type. It adds a static == function that takes lhs (left-hand side) and rhs (right-hand side) parameters and returns a Bool that says whether the two values are equal
```swift
static func ==(lhs: Employee, rhs: Employee) -> Bool {
  // Logic that determines whether the value on the left hand
  side and right hand side are equal.
}
```


  
##### Comparale<br>
**Comparable** has two requirements: It requires that the type has adopted the **Equatable** protocol, and it requires the developer to implement the **<** operator—which will return a Bool for whether the left-hand value is less than the right-hand value.






