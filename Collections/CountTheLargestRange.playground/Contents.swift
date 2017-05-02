/*
“Challenge 50: Count the largest range
Difficulty: Tricky

Write a function that accepts an array of positive and negative numbers and returns a closed range containing the position of the contiguous positive numbers that sum to the highest value, or nil if nothing were found.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func largestRange(of array: [Int]) -> CountableClosedRange<Int>? {
	//this returns nil by default
	var bestRange: CountableClosedRange<Int>? = nil
	var bestSum = 0
	//these track the current sequence of positive integers
	var currentStart: Int? = nil
	var currentSum = 0
	
	for (index, number) in array.enumerated() {
		if number > 0 {
			//if we don't have start for the current range, set one now
			currentStart = currentStart ?? index
			currentSum += number
			if currentSum > bestSum {
				//update our best range
				bestRange = currentStart!...index
				bestSum = currentSum
			}
		} else {
			// reset the current range
			currentSum = 0
			currentStart = nil
		}
	}
	return bestRange
}

assert(largestRange(of: [10, 20, 30, -10, -20, 10, 20])! == 0...2)
assert(largestRange(of: [0, 1, 1, -1, 2, 3, 1])! == 4...6)
assert(largestRange(of: [1, -1, 2, -1])! == 2...2)
assert(largestRange(of: [2, 0, 2, 0, 2])! == 0...0)
assert(largestRange(of: [Int]()) == nil )
