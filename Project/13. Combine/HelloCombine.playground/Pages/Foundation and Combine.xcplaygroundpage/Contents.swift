import Foundation
import Combine
import UIKit

// MARK: Foundation and Combine

// MARK: URLSessionTask Publisher and JSON Decding Operator
struct SomeDecodable: Decodable { }

URLSession.shared.dataTaskPublisher(for: URL(string: "https://www.google.com")!)
    .map { data, response in
        return data
    }
    .decode(type: SomeDecodable.self, decoder: JSONDecoder())

// MARK: Notifications
let center = NotificationCenter.default
let noti = Notification.Name("MyNoti")
let notiPublisher = center.publisher(for: noti, object: nil)
let subscription1 = notiPublisher.sink { _ in
    print("Noti Received")
}

center.post(name: noti, object: nil)
// Noti Received
subscription1.cancel()

// MARK: KeyPath binding to NSObject instance

let ageLabel = UILabel()
print("text: \(ageLabel.text)")
// text: nil

Just(28)
    .map { "Age is \($0)"}
    .assign(to: \.text, on: ageLabel)

print("text: \(ageLabel.text)")
// text: Optional("Age is 28")

// MARK: Timer
// autoconnect 를 이용하면 subcribe 되면 바로 시작함
let timerPublisher = Timer
    .publish(every: 1, on: .main, in: .common)
    .autoconnect()

let subscription2 = timerPublisher.sink { time in
    print("time: \(time)")
}

DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
    subscription2.cancel()
}
