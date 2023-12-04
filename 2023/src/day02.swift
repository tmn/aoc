import Foundation

struct Day02 {
    func run(input: [String]) {
        var part1 = 0
        var part2 = 0
        
        input.forEach { line in
            let game = line.split(separator: ":")
            var colors = (red: 0, green: 0, blue: 0)
            
            game[1].split(separator: ";").forEach { set in
                set.split(separator: ",").forEach { cube in
                    let c = cube.split(separator: " ")
                    
                    switch c[1] {
                    case "red":     colors.red      = max(Int(c[0])!, colors.red)
                    case "green":   colors.green    = max(Int(c[0])!, colors.green)
                    case "blue":    colors.blue     = max(Int(c[0])!, colors.blue)
                    default:        ()
                    }
                }
            }
            
            if !(colors.red > 12 || colors.green > 13 || colors.blue > 14) {
                part1 += Int(game[0].split(separator: " ")[1])!
            }
            
            part2 += (colors.red * colors.green * colors.blue)
        }
        
        print("part1: \(part1)")
        print("part2: \(part2)")
    }
}
