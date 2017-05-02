import Foundation
/*
“Challenge 33: Find duplicate filenames
Difficulty: Tricky

Write a function that accepts the name of a directory to scan, and returns an array of filenames that appear more than once in that directory or any of its subdirectories. Your function should scan all subdirectories, including subdirectories of subdirectories.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func findDuplicteFileNames(in directory: String) -> [String] {
	
	let fm = FileManager.default
	var duplicates = Set<String>()
	var seen = Set<String>()
	
	let directoryURL = URL(fileURLWithPath: directory)
	
	guard let enumerator = fm.enumerator(at: directoryURL, includingPropertiesForKeys: nil) else {
		return []
	}
	
	for case let file as URL in enumerator where file.hasDirectoryPath == false {
		let fileName = file.lastPathComponent
		if seen.contains(fileName) {
			duplicates.insert(fileName)
		}
		seen.insert(fileName)
	}
	
	return Array(duplicates)
}

//print(findDuplicteFileNames(in: "/Users/romansubrichak/Documents/source/").count)
