/*
Challenge 42: Recreate index(of:)
Difficulty: Easy

Write an extension for all collections that
reimplements the index(of:) method.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/
extension Collection where Self.Iterator.Element: Equatable, Self.Index == Int {
	func customIndex(of element: Self.Iterator.Element) -> Self.Index? {
		for (index, value) in self.enumerated() where value == element {
			return index
		}
		return nil
		
	}
}

print([1, 2, 3].customIndex(of: 1) ?? -3)