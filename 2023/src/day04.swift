struct Day04 {
    func run(_ input: [String]) {
        var sum = 0
        var cards: [Int: [Int]] = [:]
        var totalListOfCards: [Int] = Array(0..<input.count)

        for y in 0..<input.count {
            let game = input[y].split(separator: ":")[1].split(separator: "|")
            let winning = game[0].split(separator: " ")
            let yours = game[1].split(separator: " ")

            let out = winning.filter { yours.contains($0) }
            sum += 2 << (out.count - 2)
            
            if !out.isEmpty {
                for x in y+1...y+out.count {
                    cards[y, default: []].append(x)
                }
            }
        }

        var i = 0
        while i < totalListOfCards.count {
            if let loc = cards[totalListOfCards[i]] {
                totalListOfCards += loc
            }
            i += 1
        }

        print("part1: \(sum)")
        print("part2: \(totalListOfCards.count)")
    }
}
