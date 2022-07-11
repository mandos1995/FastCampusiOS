import Foundation
import Combine

var subscriptions = Set<AnyCancellable>()

// MARK: removeDuplicates
let words = "hey hey there! Mr Mr ?"
    .components(separatedBy: " ")
    .publisher
// ["hey", "hey", "there!", "Mr", "Mr", "?"]

words
    .removeDuplicates()
    .sink { value in
        print(value)
    }.store(in: &subscriptions)
// hey
// there!
// Mr
// ?

// MARK: CompactMap
let strings = ["a", "1.24", "3", "def", "45", "0.23"].publisher
strings
    .compactMap { Float($0) }
    .sink { value in
        print(value)
    }.store(in: &subscriptions)
// 1.24
// 3.0
// 45.0
// 0.23

// MARK: ignoreOutput
let numbers = (1...10_000).publisher
numbers
    .ignoreOutput()
    .sink(receiveCompletion: { print("Completed with: \($0)")},
          receiveValue: { print($0) })
    .store(in: &subscriptions)
// Completed with: finished

// MARK: prefix
let tens = (1...10).publisher

tens
    .prefix(2)
    .sink(receiveCompletion: { print("Completed with: \($0)")},
          receiveValue: { print($0) })
    .store(in: &subscriptions)
// 1
// 2
// Completed with: finished
