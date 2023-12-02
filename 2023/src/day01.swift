import Foundation

// MARK: - Part 1

func part1(_ value: String) -> Int {
    return Int("\(value.first(where: { $0.isNumber })!)\(value.last(where: { $0.isNumber })!)") ?? 0
}

// MARK: - Part 2

let numbers = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

func part2(_ value: String) -> Int {
    var matches: [(idx: Int, value: Int)] = []
    for (n, word) in numbers.enumerated() {
        for range in value.ranges(of: word) {
            let idx = value.distance(from: value.startIndex, to: range.lowerBound)
            matches.insert((idx, n + 1), at: matches.firstIndex(where: { $0.idx > idx }) ?? matches.count)
        }
    }

    let firstDigit = if let firstIdx = value.firstIndex(where: { $0.isNumber } ) {
        value.distance(from: value.startIndex, to: firstIdx) < matches.first?.idx ?? Int.max
            ? value[firstIdx].wholeNumberValue!
            : matches.first?.value ?? 0
    } else { 0 }

    let lastDigit = if let lastIdx = value.lastIndex(where: { $0.isNumber } ) {
        value.distance(from: value.startIndex, to: lastIdx) > matches.last?.idx ?? Int.min
            ? value[lastIdx].wholeNumberValue!
            : matches.last?.value ?? 0
    } else { 0 }

    return Int("\(firstDigit)\(lastDigit)")!
}




// MARK: - Results

let startTime = CFAbsoluteTimeGetCurrent()
var results = (0, 0)
try String(contentsOfFile: "./inputs/day01.txt").components(separatedBy: .newlines).forEach { value in
    results.0 = results.0 + part1(value)
    results.1 = results.1 + part2(value)
}
let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime


print("part1: \(results.0)")
print("part2: \(results.1)")
print("Time elapsed: \(timeElapsed) s.")
