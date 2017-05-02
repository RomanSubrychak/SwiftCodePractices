import Foundation

/*
Challenge 14: String permutations

Difficulty: Taxing

Write a function that prints all possible permutations
of a given input string.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func stringPermutations(string: String) {
	var count = 0
	func stringPermutations(string1: String, string2: String) {
		if string2.isEmpty {
			print(string1)
		} else if string2.characters.count > 0 {
			for i in string2.characters.enumerated() {
				
				let index = string2.index(string2.endIndex, offsetBy: -(i.offset + 1))
				
				let str1 = string1 + String(string2[index])
				
				let str2 = string2.substring(to: index) + string2.substring(from: string2.index(after:index))
				
				stringPermutations(string1: str1, string2: str2)
			}
		}
	}
	stringPermutations(string1: "", string2: string)
}

stringPermutations(string: "wombat")