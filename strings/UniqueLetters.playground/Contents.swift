import Foundation

/*
Challenge 1: Are the letters unique?

Are the letters unique?

Difficulty: Easy

Write a function that accepts a String as its only parameter, and
returns true if the string has only unique letters, taking letter
case into account.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func uniqueLetters(string: String) -> Bool {
	let set = Set(string.characters)
	return set.count == string.characters.count
}

// tests:

assert(uniqueLetters(string: "No duplicates") == true, "Challenge 1 failed")
assert(uniqueLetters(string: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(uniqueLetters(string: "AaBbCc") == true, "Challenge 1 failed")
assert(uniqueLetters(string: "Hello, world") == false, "Challenge 1 failed")
