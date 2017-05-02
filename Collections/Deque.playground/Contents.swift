/*
“Challenge 48: Implement a deque data structure
Difficulty: Tricky

Create a new data type that models a double-ended queue using
generics, or deque. You should be able to push items to the front
or back, pop them from the front or back, and get the number of
items.

Tip: It’s pronounced like “deck”.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

struct deque<T> {
	private var right = [T]()

	mutating func pushBack(_ item: T) {
		right.append(item)
	}

	mutating func pushFront(_ item: T) {
		right.insert(item, at: 0)
	}

	mutating func popBack() -> T? {
		return right.popLast()
	}

	mutating func popFront() -> T? {
		guard !right.isEmpty else {
			return nil
		}
		return right.remove(at: 0)
	}

	var count: Int {
		return right.count
	}
}

var numbers = deque<Int>()
numbers.pushBack(5)
numbers.pushBack(8)
numbers.pushBack(3)
assert(numbers.count == 3)
assert(numbers.popFront()! == 5)
assert(numbers.popBack()! == 3)
assert(numbers.popFront()! == 8)
assert(numbers.popBack() == nil)
