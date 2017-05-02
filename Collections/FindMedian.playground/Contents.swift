/*
Challenge 41: Find the median
Difficulty: Easy

Write an extension to collections that accepts an array of
Int and returns the median average, or nil if there are no
values.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

extension Collection where Self.Iterator.Element == Int {
	func median() -> Double? {
		guard !self.isEmpty else {
			return nil
		}
		let sorted = self.sorted()
		let mid = sorted.count / 2
		if sorted.count % 2 != 0 {
			return Double(sorted[mid])
		} else {
			return (Double(sorted[mid] + sorted[mid - 1]) / 2)
		}
	}
}

print([1, 2, 3].median() ?? -1)
print([1, 2, 9].median() ?? -1)
print([1, 3, 5, 7, 9].median() ?? -1)
print([1, 2, 3, 4].median() ?? -1)
print([Int]().median() ?? -1)
