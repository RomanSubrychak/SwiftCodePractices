/*
“Challenge 20: Number is prime
Difficulty: Tricky

Write a function that accepts an integer as its parameter and returns true if the number is prime.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func isPrime(_ a: Int) -> Bool {
	guard a > 2 else { return false}
	for i in 2..<a where a % i == 0 {
		return false
	}
	return true
}

assert(isPrime(11) == true, "Failed")