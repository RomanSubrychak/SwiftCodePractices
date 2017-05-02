/*
Challenge 19: Swap two numbers

Difficulty: Easy

Swap two positive variable integers, a and
b, without using a temporary variable.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.

*/

//arithmetical swap
func swap1(a: inout Int, b: inout Int) {
	a = a + b
	b = a - b
	a = a - b
}

//swifty swap
func swap2(a: inout Int, b: inout Int) {
	(b,a) = (a, b)
}

var a = 10
var b = 20
swap1(a: &a,b: &b)
swap2(a: &a, b: &b)


