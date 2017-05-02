/*
Challenge 40: Missing numbers in array
Difficulty: Easy

Create a function that accepts an array of unsorted numbers
from 1 to 100 where zero or more numbers might be missing,
and returns an array of the missing numbers.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func missingNumbers(in array: [Int]) -> [Int] {
	let inputSet = Set(array)
	let testSet = Set(1...100)
	return Array(testSet.subtracting(inputSet)).sorted()
}

var testArray = Array(1...100)
testArray.remove(at: 25)
testArray.remove(at: 20)
testArray.remove(at: 6)
print(missingNumbers(in: testArray))
