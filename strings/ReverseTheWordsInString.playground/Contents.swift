import Foundation
/*
Challenge 15: Reverse the words in a string
Difficulty: Taxing

Write a function that returns a string with each of its words
reversed but in the original order, without using a loop.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func reverseEachWord(string: String) -> String {
	let components = string.components(separatedBy: .whitespaces)
	return components.reduce("") {
		$0 + " " + String( $1.characters.reversed())
	}
}

assert(reverseEachWord(string: "Swift Coding Challenges") == " tfiwS gnidoC segnellahC", "failed")