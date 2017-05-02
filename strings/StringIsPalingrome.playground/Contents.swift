/*

Challenge 2: Is a string a palindrome?
Difficulty: Easy

Write a function that accepts a String as its only parameter, and
returns true if the string reads the same when reversed, ignoring
case.


Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func isPolindrome(string: String) -> Bool {
	let lowercased = Array(string.lowercased().characters)
	return lowercased == lowercased.reversed()
}

assert(isPolindrome(string: "level") == true, "failed")
