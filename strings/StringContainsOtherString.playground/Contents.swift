import Foundation
/*
Challenge 4: Does one string contain another?
Difficulty: Easy

Write your own version of the contains() method on String that
ignores letter case, and without using the existing contains()
method. White in String extension

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.

*/

extension String {
	func fuzzyContains(string: String) -> Bool {
		return range(of: string, options: .caseInsensitive) != nil
	}
}
assert("Hello, World!".fuzzyContains(string: "Hello") == true, "Failed")
assert("Hello, World".fuzzyContains(string: "WORLD") == true, "Failed")
assert("Hello, world".fuzzyContains(string: "GOODBYE") == false, "Failed")

