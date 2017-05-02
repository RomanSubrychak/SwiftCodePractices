import Foundation
/*
Challenge 24: Add numbers inside a string

Difficulty: Tricky

Given a string that contains both letters and numbers, write a
function that pulls out all the numbers then returns their sum.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func sumNumbersInsideString(_ input: String) -> Int {
	var string = input.lowercased()
	
	let numbers = String(string.characters.map { $0 >= "a" && $0 <= "z" ? " " : $0 }).trimmingCharacters(in: CharacterSet.whitespaces).components(separatedBy: .whitespaces)
	
	return numbers.reduce(0) { $0 + Int($1)! }
}

assert(sumNumbersInsideString("b23a20b15") == 58, "Failed")

