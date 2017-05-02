/*
Challenge 47: Recreate min()
Difficulty: Tricky

Write an extension for all collections that reimplements the
min() method.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

extension Collection where Self.Iterator.Element: Comparable {
	func customMin() -> Self.Iterator.Element? {
		guard !self.isEmpty else { return nil }
		return reduce(self.first!) { $0 < $1 ? $0 : $1 }
	}
}

print([5, 3, 0].customMin()!)
print(["q", "f", "k"].customMin()!)
print ([String]().customMin() ?? -2)
