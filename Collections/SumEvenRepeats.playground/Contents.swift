import Foundation
/*
Challenge 49: Sum the even repeats
Difficulty: Tricky

Write a function that accepts a variadic array of integers and
return the sum of all numbers that appear an even number of times.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.

*/

func countEvens(in numbers: Int...) -> Int {
	let countedSet = NSCountedSet(array: numbers)
	return countedSet.reduce(0) {
		countedSet.count(for: $1) % 2 == 0 ? $0 + ($1 as! Int) : $0
	}
}

print(countEvens(in: 1, 2, 2, 3, 3, 4 )) // 5
print(countEvens(in: 5, 5, 5, 12, 12  )) // 12
print(countEvens(in: 1, 1, 2, 2, 3, 3, 4, 4)) //10

