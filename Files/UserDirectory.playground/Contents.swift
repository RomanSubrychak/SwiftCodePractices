import Foundation
/*
Challenge 29: Documents directory

Difficulty: Easy

Write a function that returns a URL to the user’s documents
directory.

”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func userDirectory() -> URL {
	let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
	return urls[0]
}
