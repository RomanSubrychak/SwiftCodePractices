/*
Challenge 18: Recreate the pow() function

Difficulty: Easy

Create a function that accepts positive two integers,
and raises the first to the power of the second.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func myPow(number: Int, power: Int) -> Int {
	
	var result = number
	
	for _ in 0..<power - 1 {
		result *= number
	}
	return result
}

print(myPow(number: 2, power: 4))