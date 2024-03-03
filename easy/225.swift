class Queue<T> {
    var array:[T] = []
    func push(_ item:T) {
        array.append(item)
    }
    func pop() -> T? {
        return array.removeFirst()
    }
    func peek() -> T? {
        return array.first
    }
    func size() -> Int {
        return array.count
    }
    func isEmpty() -> Bool {
        return array.isEmpty
    }
}

class MyStack {

    var queue: Queue<Int>

    init() {
        queue = Queue<Int>()
    }
    
    func push(_ x: Int) {
        var size = queue.size()
        queue.push(x)
        for i in 0 ..< size {
            queue.push(queue.pop()!)
        }
    }
    
    func pop() -> Int {
        return queue.pop()!
    }
    
    func top() -> Int {
        return queue.peek()!
    }
    
    func empty() -> Bool {
        return queue.isEmpty()
    }
}
