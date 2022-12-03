import Foundation

func part1(_ value: String) -> Int {
    switch value {
    case "A X": return 4
    case "A Y": return 8
    case "A Z": return 3
    case "B X": return 1
    case "B Y": return 5
    case "B Z": return 9
    case "C X": return 7
    case "C Y": return 2
    case "C Z": return 6
    default: return 0
    }
}

func part2(_ value: String) -> Int {
    switch value {
    case "A X": return 3
    case "A Y": return 4
    case "A Z": return 8
    case "B X": return 1
    case "B Y": return 5
    case "B Z": return 9
    case "C X": return 2
    case "C Y": return 6
    case "C Z": return 7
    default: return 0
    }
}

var results = (0, 0)

try String(contentsOfFile: "./inputs/day02.txt").components(separatedBy: .newlines).forEach { value in
    results.0 += part1(value)
    results.1 += part2(value)
}

print("part1: \(results.0)")
print("part2: \(results.1)")
