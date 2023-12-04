import Foundation

func readFile(_ fileName: String) -> [String] {
    let fileUrl = Bundle.module.url(forResource: fileName, withExtension: "txt", subdirectory: "inputs")!
    return try! String(contentsOf: fileUrl).components(separatedBy: .newlines)
}

func runDay(_ day: String, runFunc: (_ input: [String]) -> Void) {
    let startTime = CFAbsoluteTimeGetCurrent()
    runFunc(readFile(day))
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print("=== Time elapsed \(day): \(timeElapsed) s.")
}

runDay("day01", runFunc: Day01().run)
runDay("day02", runFunc: Day02().run)
runDay("day04", runFunc: Day04().run)
