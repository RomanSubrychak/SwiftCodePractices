/*
Challenge 52: Sum an array of numbers
Difficulty: Taxing

Write one function that sums an array of numbers. The array
might contain all integers, all doubles, or all floats.

Tip: If you think this challenge is easy, you’re either a hardened Swift pro or you’ve underestimated the problem.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

protocol Summable {
	init()
	static func +(lhs: Self, rhs: Self) -> Self
}
extension Int: Summable {
}
extension Double: Summable {
	
}

func sum<T:Summable>(array: [T]) -> T {
	return array.reduce(T(), +)
}

extension Collection where Self.Iterator.Element: Summable {
	var sum: Self.Iterator.Element {
		return reduce(Self.Iterator.Element(), +)
	}
}

print(sum(array: [1.5, 1.6, 1.7]))
print([1.3, 5.9, 3.0].sum)
