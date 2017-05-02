import Foundation
/*
Challenge 7: Condense whitespace

Difficulty: Easy

Write a function that returns a string with any
consecutive spaces replaced with a single space.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func replacingConsecutiveWhiteSpaces(in string: String) -> String {
	var string1 = string
	while let rangeOfSpaces = string1.range(of: "  ") {
		string1.replaceSubrange(rangeOfSpaces, with: " ")
	}
	return string1
}

assert(replacingConsecutiveWhiteSpaces(in: "a  b   c        d c") == "a b c d c", "Failed")
