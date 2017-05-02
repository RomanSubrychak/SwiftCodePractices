/*
Challenge 22: Binary reverse
Difficulty: Tricky

Create a function that accepts an unsigned 8-bit integer and
returns its binary reverse, padded so that it holds precisely
eight binary digits.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func binaryReverse(number: Int) -> Int {
	let binaryNumber = String(number, radix: 2)
	let paddedBinary = String(repeating: "0", count: 8 - binaryNumber.characters.count) + binaryNumber
	let reversedBinary = String(paddedBinary.characters.reversed())
	return Int(reversedBinary, radix: 2)!
}
assert(binaryReverse(number: 32) == 4, "Failed")