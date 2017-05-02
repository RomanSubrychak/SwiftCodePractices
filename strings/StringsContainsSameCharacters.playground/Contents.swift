/*
Challenge 3: Do two strings contain the same characters?

Difficulty: Easy

Write a function that accepts two String parameters, and returns
true if they contain the same characters in any order taking into
account letter case.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.

*/

func containsSameLetters(string1: String, string2: String) -> Bool {
	let array1 = Array(string1.characters).sorted()
	let array2 = Array(string2.characters).sorted()
	return array1 == array2
}

assert(containsSameLetters(string1: "abca", string2: "aabc") == true, "Failed")

