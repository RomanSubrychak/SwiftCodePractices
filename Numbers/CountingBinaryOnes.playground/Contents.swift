/*
Challenge 21: Counting binary ones

Difficulty: Tricky

Create a function that accepts any positive integer and returns
the next highest and next lowest number that has the same number
of ones in its binary representation. If either number is not
possible, return nil for it.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func countingBinaryOnes(number: Int) -> (nextHighest: Int? ,nextLowest: Int?) {
	let str = String(number, radix: 2)
	let numberOfOnes = str.characters.reduce(0) { $1 == "1" ? $0 + 1 : $0 }
	var previous = number - 1
	var next = number + 1
	
	while String(previous, radix: 2).characters.reduce(0, { $1 == "1" ? $0 + 1 : $0 }) != numberOfOnes {
		previous -= 1
	}
	while String(next, radix: 2).characters.reduce(0, { $1 == "1" ? $0 + 1 : $0 }) != numberOfOnes {
		next += 1
	}
	
	return (next, previous)
}

print(countingBinaryOnes(number: 28))
