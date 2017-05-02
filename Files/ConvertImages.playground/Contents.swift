
/*
Challenge 35: Convert images
Difficulty: Tricky

Write a function that accepts a path to a directory, then
converts to PNGs any JPEGs it finds in there, leaving the
originals intact. If any JPEG can’t be converted the
function should just quietly continue.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/
import AppKit

func jpgToPng(path: String) {
	let fm = FileManager.default
	let pathURL = URL(fileURLWithPath: path)
	guard let files = try? fm.contentsOfDirectory(at: pathURL, includingPropertiesForKeys: nil) else {
		return
	}
	for file in files where file.pathExtension == "jpg" || file.pathExtension == "jpeg" {
		
		guard let image = NSImage(contentsOf: file),
			let tiff = image.tiffRepresentation,
			let bitmap = NSBitmapImageRep(data: tiff),
			let png = bitmap.representation(using: .PNG, properties: [:]) else {
				continue
		}
		
		let pngFile = file.deletingPathExtension().appendingPathExtension("png")
		_ = try? png.write(to: pngFile)
	}
	
}

//jpgToPng(path: "/Users/romansubrichak/Documents/source/")
