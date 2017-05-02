import Foundation
/*
Challenge 8: String is rotated

Difficulty: Tricky

Write a function that accepts two strings, and returns true if
one string is rotation of the other, taking letter case into
account.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func isRotations(input: String, rotated: String) -> Bool {
	return (input + input).contains(rotated)
}

assert(isRotations(input: "abcde", rotated: "eabcd") == true, "Failed")
