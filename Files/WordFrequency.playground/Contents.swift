import Foundation

/*
Challenge 32: Word frequency
Difficulty: Tricky

Write a function that accepts a filename on disk, loads it
into a string, then returns the frequency of a word in that
string, taking letter case into account. How you define “word”
is worth considering carefully.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.

*/

func frequency(filename: String, count: String) -> Int {
	
	guard let words = try? String(contentsOfFile: filename) else {
		return 0
	}
	var nonLetters = CharacterSet.letters.inverted
	nonLetters.remove("'")
	let components = words.components(separatedBy: nonLetters)
	let countedSet = NSCountedSet(array: components)
	return countedSet.count(for: count)
	
}
//print(frequency(filename: "/Users/romansubrichak/Documents/source/helloWorld", count: "Hello"))
