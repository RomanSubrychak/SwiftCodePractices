/*
Challenge 46: Recreate map()
Difficulty: Tricky

Write an extension for all collections that reimplements the map() method.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

extension Collection {
	func customMap<T>(_ transform: (Self.Iterator.Element) throws -> T) rethrows -> [T] {
		var array = [T]()
		for element in self {
			array.append(try transform(element))
		}
		return array
	}
}

let arr = [1, 2, 3].customMap { String($0) }
let arr_1 = ["1", "2", "3"].customMap { Int($0)! }