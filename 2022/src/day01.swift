import Foundation

let data = try String(contentsOfFile: "./inputs/day01.txt")
var values = data.components(separatedBy: "\n\n").map {
    $0.components(separatedBy: "\n").compactMap { Int($0) }.reduce(0, +)
}
values.sort()

print("part1: \(values.max()!)")
print("part2: \(values.suffix(3).reduce(0, +))")
