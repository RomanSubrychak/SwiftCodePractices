/*
Challenge 38: Find N smallest
Difficulty: Easy

Write an extension for all collections that returns the N
smallest elements as an array, sorted smallest first, where
N is an integer parameter.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/
extension Collection where Iterator.Element: Comparable {
	func smallests(n: Int) -> [Self.Iterator.Element] {
		let sorted = self.sorted()
		return Array(sorted.prefix(n))
	}
}

print([1, 2, 3, 4].smallests(n: 3))
print(["q", "f", "k"].smallests(n: 10))