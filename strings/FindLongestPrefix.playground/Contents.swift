import Foundation
/*
Challenge 12: Find longest prefix
Difficulty: Tricky

Write a function that accepts a string of words with
a similar prefix, separated by spaces, and returns
the longest substring that prefixes all words.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/
func longestPrefix(string: String) -> String {
	var components = string.components(separatedBy: .whitespaces)
	var longestPrefix = components.removeFirst()
	while (components.reduce(0) {!$1.hasPrefix(longestPrefix) ? $0 + 1 : $0}) != 0 {
		longestPrefix.remove(at: longestPrefix.index(before: longestPrefix.endIndex))
	}
	
	return longestPrefix
	
}

assert(longestPrefix(string: "swift swift switch swill swim") == "swi", "failed")
assert(longestPrefix(string: "flip flip flap flop") == "fl", "Failed")

