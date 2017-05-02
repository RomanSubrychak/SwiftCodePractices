import Foundation
/*
Challenge 27: Print last lines

Difficulty: Easy

Write a function that accepts a filename on disk, then prints
its last N lines in reverse order, all on a single line separated
by commas.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.

*/
func printLines(_ n: Int, from file: String) {
	
	guard n > 0 else { return }
	
	if let string = try? String(contentsOfFile: file) {
		
		let lines: [String] = string.components(separatedBy: .newlines).reversed()
		
		let linesCount = lines.count
		
		guard linesCount > 0 else { return }
		
		for i in 0..<min(n, linesCount) {
			print(lines[i])
		}
	} else {
		print("File not found")
	}
}

