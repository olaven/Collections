//
//  queueTest.swift
//  MoreCollections
//
//  Created by Olav on 28/12/2018.
//

import XCTest
@testable import Collections

final class queueTest: XCTestCase {
    
    var queue = Queue<String>()
    
    override func setUp() {
        queue = Queue<String>()
    }
    
    func testEnqueueOne() {
        let initialCount = queue.count
        queue.enqueue(value: "enqueued value")
        
        XCTAssertEqual(queue.count, initialCount + 1)
    }
    
    func testPushSeveral() {
        let initialCount = queue.count
        
        for _ in 1...10 {
            queue.enqueue(value: "enqueued")
        }
        
        XCTAssertEqual(queue.count, initialCount + 10)
    }
    
    func testShouldPeekLastAdded() {
        queue.enqueue(value: "enqueued first")
        queue.enqueue(value: "enqueued last")
        
        let retrieved = queue.peek()
        
        XCTAssertEqual(retrieved, "enqueued first")
    }
    
    func testShouldPopOne() {
        queue.enqueue(value: "hello");
        let countBeforeDequeue = queue.count
        
        queue.dequeue()
        
        XCTAssertEqual(queue.count, countBeforeDequeue - 1)
    }
    
    func testShouldPopLastAdded() {
        queue.enqueue(value: "first")
        queue.enqueue(value: "second")
        queue.enqueue(value: "third")
        
        let popped = queue.dequeue()
        
        XCTAssertEqual(popped, "first")
    }
    
    static var allTests = [
        ("testEnqueueOne", testEnqueueOne),
        ]
}
