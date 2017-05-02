import Foundation
/*
Challenge 28: Log a message

Difficulty: Easy

Write a logging function that accepts accepts a path to a log
file on disk as well as a new log message. Your function should
open the log file (or create it if it does not already exist),
then append the new message to the log along with the current
time and date.

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.

*/

func log(message: String, filename: String) {
	var existingLog = (try? String(contentsOfFile: filename) )
	
	existingLog?.append("\(Date()): \(message)\n")
	do {
		try existingLog?.write(toFile: filename, atomically: true, encoding: .utf8)
	} catch {
		print(error.localizedDescription)
	}
}
