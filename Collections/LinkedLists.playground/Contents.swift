/*

Challenge 43: Linked lists
Difficulty: Easy

Create a linked list of lowercase English alphabet letters,
along with a method that traverses all nodes and prints their
letters on a single line separated by spaces.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

class Node<T> {
	var value: T
	var next: Node<T>?
	
	init(value: T, next: Node<T>? = nil) {
		self.value = value
		self.next = next
	}
}

class LinkedList<T> {
	fileprivate var head: Node<T>?
	fileprivate var tail: Node<T>?
	
	init(with value: T) {
		initialize(with: value)
	}
	
	fileprivate func initialize(with value: T) {
		tail = Node<T>(value: value, next: nil)
		head = tail
		head?.next = tail
	}
	
	init() {
	}
	
	convenience init(of array: [T]) {
		self.init()
		for element in array {
			self.append(value: element)
		}
	}
	
	func append(value: T) {
		if head == nil && tail == nil {
			initialize(with: value)
		} else {
			let node = Node<T>(value: value, next: nil)
			tail?.next = node
			tail = node
		}
		
		
	}
	func printElements() {
		var currentNode: Node<T>? = head
		while let node = currentNode {
			print(node.value)
			currentNode = currentNode?.next
		}
	}
	
	func mid() -> Node<T>? {
		guard head != nil && tail != nil else {
			return nil
		}
		var slow: Node? = head
		var fast: Node? = head
		
		while fast != nil && fast?.next != nil {
			slow = slow?.next
			fast = fast?.next?.next
		}
		return slow
	}
	
	func prepend(value: T) {
		let node = Node(value: value, next: head)
		head = node
	}
}

let linkedList = LinkedList<Character>()

for i in 1...26 {
	let letter = Character(UnicodeScalar(96 + i)!)
	linkedList.append(value: letter)
}

linkedList.printElements()
print(linkedList.mid()!.value)

/*
Challenge 51: Reversing linked lists
Difficulty: Tricky

Expand your code from challenge 43 so that it has a reversed()
method that returns a copy of itself in reverse.”

Excerpt From: Paul Hudson. “Swift Coding Challenges.” iBooks.
*/

extension LinkedList {
	
	func isEmpty() -> Bool {
		return head != nil && tail != nil ? false : true
	}
	
	func reversed() -> LinkedList {
		
		let reversedLinkedList = LinkedList()
		var currentNode = head
		while let node = currentNode {
			reversedLinkedList.prepend(value: node.value)
			currentNode = currentNode?.next
		}
		return reversedLinkedList
	}
}

let reversed = linkedList.reversed()
reversed.printElements()
