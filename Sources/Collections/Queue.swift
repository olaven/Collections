//
//  Queue.swift
//  MoreCollections
//
//  Created by Olav on 28/12/2018.
//

import Foundation

public class Queue<Type>: PQueue {
    
    
    private class Node {
        
        var value: Type
        var previous: Node?
        
        init(value: Type) {
            self.value = value
        }
    }
    
    
    typealias T = Type

    public init() {}
    
    public var count: Int = 0
    
    private var front: Node?
    private var back: Node?
    
    public func enqueue(value: Type) {
        
        let node = Node(value: value)
        count += 1
        
        if var back = back {
            back.previous = node
            back = node
        } else {
            front = node
            back = node
            return
        }
    }
    
    public func dequeue() -> Type? {
        let value = front?.value
        if let front = front {
            self.front = front.previous
            
            if count == 1 {
                back = nil 
            }
            
            count -= 1
        }
        
        return value 
    }
    
    public func peek() -> Type? {
        return front?.value
    }
    
}

protocol PQueue : Collection {
    associatedtype T
    
    /// Add value in back of queue
    func enqueue(value : T)
    
    /// Remove value from queue
    func dequeue() -> T?
    
    /// Retrieve value in front
    func peek() -> T?
}
