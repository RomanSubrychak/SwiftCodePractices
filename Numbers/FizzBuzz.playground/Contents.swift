/*
Challenge 16: Fizz Buzz

Difficulty: Easy

Write a function that counts from 1 through 100, and prints
“Fizz” if the counter is evenly divisible by 3, “Buzz” if it’s
evenly divisible by 5, “Fizz Buzz” if it’s even divisible by
three and five, or the counter number for all other cases.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func fizzBuzz() {
	for i in 1...100 {
		switch ( i % 3 == 0, i % 5 == 0) {
		case (true, false):
			print("Fizz")
		case (false, true):
			print("Buzz")
		case (true, true):
			print("Fizz Buzz")
		case (false, false):
			print(i)
		}
	}
}

fizzBuzz()