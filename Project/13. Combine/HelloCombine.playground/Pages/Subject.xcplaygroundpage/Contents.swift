import UIKit
import Combine

// MARK: PassthroughSubject
let relay = PassthroughSubject<String, Never>()
let subscription1 = relay.sink { value in
    print("subscription1 received value: \(value)")
}

relay.send("Hello")
// subscription1 received value: Hello
relay.send("World!")
// subscription1 received value: World

// MARK: CurrentValueSubject
let variable = CurrentValueSubject<String, Never>("")  // 초기값을 넣어줘야 함

variable.send("Inital text")

let subscription2 = variable.sink{ value in
    print("subscription2 received value: \(value)")
}

variable.send("More text")
// subscription2 received value: Inital text
// subscription2 received value: More text
print(variable.value) // More text

let publisher = ["Here", "we", "go"].publisher
publisher.subscribe(relay)
// subscription1 received value: Here
// subscription1 received value: we
// subscription1 received value: go
