/*
Challenge 37: Count the numbers
Difficulty: Easy

Write an extension for collections of integers that returns
the number of times a specific digit appears in any of its
numbers.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

extension Collection where Iterator.Element == Int {
	func count(character: Character) -> Int {
		return reduce(0) { (sum, element) in
			return sum + String(element).characters.filter { $0 == character }.count
		}
	}
}

assert([5, 15, 55, 515].count(character: "5") == 6, "Failed")
assert([5, 15, 55, 515].count(character: "1") == 2, "Failed")
assert([55555].count(character: "5") == 5, "Failed")
assert([55555].count(character: "1") == 0, "Failed")
