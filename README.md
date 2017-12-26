####Lab---Protocols
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
  





