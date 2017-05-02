import Foundation
/*
“Challenge 34: Find executables
Difficulty: Tricky

Write a function that accepts the name of a directory to scan, and returns an array containing the name of any executable files in there.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func findExecutables(in directory: String) -> [String] {
	let fm = FileManager.default
	
	guard let paths = try? fm.contentsOfDirectory(atPath: directory) else {
		return []
	}
	
	let executables = paths
		.filter { fm.isExecutableFile(atPath: $0) }
		.map { URL(fileURLWithPath: $0).lastPathComponent }
	
	return executables
}

//print(findExecutables(in: "/Users/romansubrichak/Documents/source/"))

