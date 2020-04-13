/* Design your implementation of the circular queue. */
class MyCircularQueue { 
    private var queue = [Int]()
    private var count: Int

    /** Initialize your data structure here. Set the size of the deque to be k. */
    init(_ k: Int) {
        count = k
    }

    /** Insert an element into the circular queue. Return true if the operation is successful. */
    func enQueue(_ value: Int) -> Bool {
        if queue.count < count{
            queue.insert(value, at: 0)
            return true
        }
        return false 
    }
    
    // /** Delete an element from the circular queue. Return true if the operation is successful. */
    func deQueue() -> Bool {
        if isEmpty(){
            return false
        }

        queue.removeLast()
        return true
    }
    
    // /** Get the front item from the queue. */
    func Front() -> Int {
        if isEmpty(){
            return -1
        }

        if let front = queue.front! {
            return front 
        }

        return -1
    }
    
    // /** Get the last item from the queue. */
    func Rear() -> Int {
        if isEmpty(){
            return -1
        }

        if let last = queue.last {
            return last
        }

        return -1
    }
    
    /** Checks whether the circular queue is empty or not. */
    func isEmpty() -> Bool {
        return queue.isEmpty
    }
    
    /** Checks whether the circular queue is full or not. */
    func isFull() -> Bool {
        return queue.count == count 
    }
    
}
