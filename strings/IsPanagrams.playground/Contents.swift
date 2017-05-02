/*
Challenge 9: Find pangrams

Difficulty: Tricky

Write a function that returns true if it is given a
string that is an English pangram, ignoring letter case.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.

*/

func isPanagram(input: String) -> Bool {
	return Set(input.lowercased().characters).filter { $0 >= "a" && $0 <= "z" }.count == 26
}

assert(isPanagram(input: "The quick brown fox jumps over the lazy dog") == true, "failed")
assert(isPanagram(input: "The quick brown fox jumped over the lazy dog") == false, "failed")