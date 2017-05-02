/*
“Challenge 30: New JPEGs
Difficulty: Easy

Write a function that accepts a path to a directory and returns
an array of all JPEGs that have been created in the last 48
hours.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

func newJPEGs(path: String) -> [String] {
	let fm = FileManager.default
	
	var jpegs = [String]()
	
	let directoryURL = URL(fileURLWithPath: path)
	
	if let files = try? fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) {
		for file in files where file.pathExtension == "jpeg" || file.pathExtension == "jpg" {
			if let attributes = try? fm.attributesOfItem(atPath: file.path) {
				if let creationDate = attributes[FileAttributeKey.creationDate] as? Date {
					if creationDate > Date(timeIntervalSinceNow: -60 * 60 * 48) {
						jpegs.append(file.lastPathComponent)
					}
				}
			}
		}
	}
	return jpegs
}
