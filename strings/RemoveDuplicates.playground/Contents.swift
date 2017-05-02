import Foundation

/*
Challenge 6: Remove duplicate letters from a string

Difficulty: Easy

Write a function that accepts a string as its input, and returns
the same string just with duplicate letters removed.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func removedDuplicates(in string: String) -> String {
	let array = NSOrderedSet(array: Array(string.characters)).array as! [Character]
	return String(array)
}

assert(removedDuplicates(in: "wombat") == "wombat", "Failed")
assert(removedDuplicates(in: "hello") == "helo", "Failed")
assert(removedDuplicates(in: "Mississippi") == "Misp", "Failed")
