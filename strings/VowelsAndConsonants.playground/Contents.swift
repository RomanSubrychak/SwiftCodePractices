/*

Challenge 10: Vowels and consonants

Difficulty: Tricky

Given a string in English, return a tuple
containing the number of vowels and consonants.


Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func vowelsAndConsonantsCount(in string: String) -> (vowels: Int, consonants: Int) {
	let vowels: [Character] = ["a", "e", "i", "o", "u"]
	let array = string.lowercased().characters.filter { $0 > "a" && $0 <= "z" }
	let vowelsCount = array.reduce(0) { return vowels.contains($1) ? $0 + 1 : $0 }
	return (vowelsCount, array.count - vowelsCount)
}

assert(vowelsAndConsonantsCount(in: "“Mississippi") == (4,7), "Failed")