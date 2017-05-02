/*
“Challenge 25: Calculate a square root by hand
Difficulty: Taxing

Write a function that returns the square root of a positive integer, rounded down to the nearest integer, without using sqrt().”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func squareRoot(of number: Int) -> Int {
	for i in 0...number/2 {
		if i * i > number {
			return i
		}
	}
	return 0
}

assert(squareRoot(of: 15) == 4, "Failed")
