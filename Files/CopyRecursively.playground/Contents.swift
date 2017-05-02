/*
“Challenge 31: Copy recursively
Difficulty: Easy

Write a function that accepts two paths: the first should point to a directory to copy, and the second should be where the directory should be copied to. Return true if the directory and all its contents were copied successfully; false if the copy failed, or the user specified something other than a directory.

”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func copy(source: String, destination: String) -> Bool {
	let fm = FileManager.default
	var isDirectory: ObjCBool = false
	guard fm.fileExists(atPath: source, isDirectory: &isDirectory) || isDirectory.boolValue == false else { return false }
	let sourceURL = URL(fileURLWithPath: source)
	let destinationURL = URL(fileURLWithPath: destination)
	
	do {
		try fm.copyItem(at: sourceURL, to: destinationURL)
	} catch {
		print("fucking error")
		return false
	}
	
	return true
}

//_ = copy(source: "/Users/romansubrichak/Documents/source", destination: "/Users/romansubrichak/Documents/destination")
