/*
Challenge 11: Three different letters

Difficulty: Tricky

Write a function that accepts two strings, and returns
true if they are identical in length but have no more
than three different letters, taking case into account.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func hasTheeDifferentLetters(string1: String, string2: String) -> Bool {
	guard string1.characters.count == string2.characters.count else {
		return false
	}
	
	let array1 = Array(string1.characters)
	let array2 = Array(string2.characters)
	
	return array1.reduce(0) {!array2.contains($1) ? $0 + 1 : $0 } <= 3
}

assert(hasTheeDifferentLetters(string1: "Clamp", string2: "Cramp") == true, "Failed")
assert(hasTheeDifferentLetters(string1: "Clamp", string2: "Crams") == true, "Failed")
assert(hasTheeDifferentLetters(string1: "Clamp", string2: "Grams") == true, "Failed")
assert(hasTheeDifferentLetters(string1: "Clamp", string2: "Grans") == false, "Failed")
