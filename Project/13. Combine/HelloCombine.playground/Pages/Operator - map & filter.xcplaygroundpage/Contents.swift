import Foundation
import Combine


// Transform - Map
let numPublisher = PassthroughSubject<Int, Never>()
let subscription1 = numPublisher
    .map { $0 * 2 }
    .sink { value in
        print("Transformed Value: \(value)")
    }

numPublisher.send(10)
// Transformed Value: 20
numPublisher.send(20)
// Transformed Value: 40
numPublisher.send(30)
// Transformed Value: 60
subscription1.cancel()

// Filter
let stringPublisher = PassthroughSubject<String, Never>()
let subscription2 = stringPublisher
    .filter { $0.contains("a") }
    .sink { value in
        print("Filtered Value: \(value)")
    }

stringPublisher.send("abc")
// Filtered Value: abc
stringPublisher.send("Jack")
// Filtered Value: Jack
stringPublisher.send("Joon")
stringPublisher.send("Jenny")
stringPublisher.send("Jason")
// Filtered Value: Jason
