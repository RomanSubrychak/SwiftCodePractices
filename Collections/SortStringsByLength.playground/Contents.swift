/*
Challenge 39: Sort a string array by length
Difficulty: Easy

Extend collections with a function that returns an array
of strings sorted by their lengths, longest first.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.

*/

extension Collection where Self.Iterator.Element == String {
	func sortByLength() -> [Self.Iterator.Element] {
		return self.sorted {
			$0.characters.count > $1.characters.count
		}
	}
}

print(["a", "abc", "ab"].sortByLength())
print([String]().sortByLength())