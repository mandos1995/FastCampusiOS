import UIKit
import Combine

// MARK: Publisher & Subscriber
let just = Just(1000)
let subscription1 = just.sink { value in
    print("Received Value: \(value)")
}
// Received Value: 1000

let arrayPublisher = [1, 3, 5, 7, 9].publisher
let subcription2 = arrayPublisher.sink { value in
    print("Received Value: \(value)")
}
// Received Value: 1
// Received Value: 3
// Received Value: 5
// Received Value: 7
// Received Value: 9

class MyClass {
    var property: Int = 0 {
        didSet {
            print("Did set property to \(property)")
        }
    }
}

let object = MyClass()
let subscription3 = arrayPublisher.assign(to: \.property, on: object)
// Did set property to 1
// Did set property to 3
// Did set property to 5
// Did set property to 7
// Did set property to 9

print("Final Value: \(object.property)")
// Final Value: 9
