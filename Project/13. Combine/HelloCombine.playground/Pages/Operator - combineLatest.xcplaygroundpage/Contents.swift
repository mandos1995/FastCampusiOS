import Foundation
import Combine

// MARK: Basic CombineLatest
let strPublisher = PassthroughSubject<String, Never>()
let numPublisher = PassthroughSubject<Int, Never>()

strPublisher.combineLatest(numPublisher).sink { (str, num) in
    print("Receive: \(str), \(num)")
}

// 위와 같은 표현
// Publishers.CombineLatest(strPublisher, numPublisher).sink { (str, num) in
//     print("Receive: \(str), \(num)")
// }

strPublisher.send("a")
numPublisher.send(1)
strPublisher.send("b")
strPublisher.send("c")
numPublisher.send(2)
numPublisher.send(3)

// Receive: a, 1
// Receive: b, 1
// Receive: c, 1
// Receive: c, 2
// Receive: c, 3

// MARK: Advanced CombineLatest
let usernamePublisher = PassthroughSubject<String, Never>()
let passwordPublisher = PassthroughSubject<String, Never>()

let vaildatedCrendetialsSubscription = usernamePublisher.combineLatest(passwordPublisher)
    .map { (username, password) -> Bool in
        return !username.isEmpty && !password.isEmpty && password.count > 12
    }
    .sink { vaild in
        print("Credential vaild? : \(vaild)")
    }
usernamePublisher.send("jasonlee")
passwordPublisher.send("weakpw")
// Credential vaild? : false

passwordPublisher.send("verystrongpassword")
// Credential vaild? : true

// MARK: Merge
let publisher1 = [1, 2, 3, 4, 5].publisher
let publisher2 = [300, 400, 500].publisher

let mergePublisherSubscription = publisher1.merge(with: publisher2)
    .sink { value in
        print("Merge: subcription received value: \(value)")
    }

// 위와 같은 표현
// Publishers.Merge(publisher1, publisher2)
//     .sink { value in
//     print("Merge: subcription received value: \(value)")
// }

// Merge: subcription received value: 1
// Merge: subcription received value: 2
// Merge: subcription received value: 3
// Merge: subcription received value: 4
// Merge: subcription received value: 5
// Merge: subcription received value: 300
// Merge: subcription received value: 400
// Merge: subcription received value: 500

// Error! merge는 타입이 같아야 함, 타입이 다르기 때문에 오류를 발생시킴

// let publisher1 = [1, 2, 3, 4, 5].publisher
// let publisher2 = ["300", "400", "500"].publisher
//
// let mergePublisherSubscription = publisher1.merge(with: publisher2)
//     .sink { value in
//         print("Merge: subcription received value: \(value)")
//     }
