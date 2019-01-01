//
//  queueTest.swift
//  MoreCollections
//
//  Created by Olav on 27/12/2018.
//

import XCTest
@testable import Collections

final class stackTest: XCTestCase {
    
    var stack = Stack<String>()
    
    override func setUp() {
        stack = Stack<String>()
    }
    
    func testPushOne() {
        let initialCount = stack.count
        stack.push(value: "pushed value")
        
        XCTAssertEqual(stack.count, initialCount + 1)
    }
    
    func testPushSeveral() {
        let initialCount = stack.count
        
        for _ in 1...10 {
            stack.push(value: "pushed")
        }
        
        XCTAssertEqual(stack.count, initialCount + 10)
    }
    
    func testShouldPeekLastAdded() {
        stack.push(value: "pushed first")
        stack.push(value: "pushed last")
        
        let retrieved = stack.peek()
        
        XCTAssertEqual(retrieved, "pushed last")
    }
    
    func testShouldPopOne() {
        stack.push(value: "hello");
        let countBeforePop = stack.count
        
        stack.pop();
        
        XCTAssertEqual(stack.count, countBeforePop - 1)
    }
    
    func testShouldPopLastAdded() {
        stack.push(value: "pushed first")
        stack.push(value: "pushed second")
        stack.push(value: "pushed third")
        
        let popped = stack.pop();
        
        XCTAssertEqual(popped, "pushed third")
    }

    static var allTests = [
        ("testPushOne", testPushOne),
    ]
}
