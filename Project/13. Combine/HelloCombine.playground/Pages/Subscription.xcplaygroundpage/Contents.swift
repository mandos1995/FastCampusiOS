import Foundation
import Combine

// MARK: Subscription
let subject = PassthroughSubject<String, Never>()
let subscription = subject
    .print("[Debug]")
    .sink { value in
    print("Subscriber recevied value: \(value)")
}
// [Debug]: receive subscription: (PassthroughSubject)
// [Debug]: request unlimited

subject.send("Hello")
// [Debug]: receive value: (Hello)
// Subscriber recevied value: Hello

subject.send("Hello again!")
// [Debug]: receive value: (Hello again!)
// Subscriber recevied value: Hello again!

subject.send("Hello For the last time!")
// [Debug]: receive value: (Hello For the last time!)
// Subscriber recevied value: Hello For the last time!

// 연결을 끊기 위해서 Publisher에 .finished completion을 보낼 수도있고, subscription을 직접 cancle할 수 있음
subject.send(completion: .finished)
// [Debug]: receive finished

subscription.cancel()

subject.send("Hello ?? :(")
