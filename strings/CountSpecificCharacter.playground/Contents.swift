/*
Challenge 5: Count the characters

Difficulty: Easy

Write a function that accepts a string, and returns how many
times a specific character appears, taking case into account.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.

*/

func count(character: Character, in string: String) -> Int {
	return string.characters.reduce(0) { character == $1 ? $0 + 1 : $0 }
}

assert(count(character: "a", in: "Spain") == 1, "Failed")
assert(count(character: "i", in: "Mississipi") == 4, "Failed")
assert(count(character: "i", in: "Hacking with swift") == 3, "Failed")

