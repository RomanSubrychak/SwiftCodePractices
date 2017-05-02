/*
Challenge 26: Subtract without subtract

Difficulty: Taxing

Create a function that subtracts one positive
integer from another, without using -.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func subtruct(number: Int, from number2: Int) -> Int {
	return number2 + (~number + 1)
}

assert(subtruct(number: 30, from: 10) == -20, "Failed")