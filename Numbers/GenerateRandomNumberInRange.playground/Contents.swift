import Foundation

/*
Challenge 17: Generate a random number in a range

Difficulty: Easy

Write a function that accepts positive minimum and
maximum integers, and returns a random number between
those two bounds, inclusive.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func random(min: Int, max: Int) -> Int {
	let rand = arc4random_uniform(UInt32(max + 1))
	return Int(rand) + min
}

print(random(min: 1, max: 5))