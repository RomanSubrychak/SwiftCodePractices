import Foundation
/*
“Challenge 36: Print error lines
Difficulty: Taxing

Write a function that accepts accepts a path to a log file on disk, and returns how many lines start with “[ERROR]”. The log file could be as large as 10GB, but may also not exist.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.\
*/

class ChunkReader {
	var fileHandle: FileHandle?
	var buffer: Data
	let chunkSize = 4
	let delimiter = "\n".data(using: .utf8)!
	
	init(path: String) {
		let pathURL = URL(fileURLWithPath: path)
		fileHandle = try? FileHandle(forReadingFrom: pathURL)
		buffer = Data(capacity: chunkSize)
	}
	
	func readLine() -> String? {
		var rangeOfdelimiter = buffer.range(of: delimiter)
		
		while rangeOfdelimiter == nil {
			guard let chunk = fileHandle?.readData(ofLength: chunkSize) else {
				return nil
			}
			if chunk.count == 0 {
				if buffer.count > 0 {
					defer {
						buffer.count = 0
					}
					return String(data: buffer, encoding: .utf8)
				}
				return nil
			} else {
				buffer.append(chunk)
				rangeOfdelimiter = buffer.range(of: delimiter)
			}
		}
		let rangeOfLine = Range(0..<rangeOfdelimiter!.upperBound)
		let line = String(data: buffer.subdata(in: rangeOfLine), encoding: .utf8)
		buffer.removeSubrange(rangeOfLine)
		_ = line?.trimmingCharacters(in: .whitespacesAndNewlines)
		return line
	}
}

func countLinesOfErrors(in fileName: String) -> Int{
	let reader = ChunkReader(path: fileName)
	var counter = 0
	while let line = reader.readLine() {
		if line.hasPrefix("[ERROR]") {
			counter += 1
		}
	}
	return counter
}
