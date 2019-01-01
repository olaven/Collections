//
//  Stack.swift
//  MoreCollections
//
//  Created by Olav on 28/12/2018.
//

import Foundation

protocol PStack: Collection {
    
    associatedtype T
    
    /// Pushes an element to the
    /// top of the stack
    func push(value: T) -> Void
    
    /// Removes and returns the value
    /// on top of stack
    func pop() -> T?
    
    // Returns the value on top of stack
    func peek() -> T?
}


public class Stack<Type> : PStack {
    typealias T = Type
    
    private class Node {
        var value: T
        var below: Node?
        
        init(value: T) {
            self.value = value
        }
    }
    
    public init() {}
    public var count: Int = 0
    private var head : Node?
    
    public func push(value: Type) {
        count += 1 
        let node = Node(value: value)
        
        if head == nil {
            head = node
            return
        }
        
        node.below = head!
        head = node
    }
    
    public func pop() -> Type? {
        if let head = head {
            let value = head.value
            self.head = head.below
            
            count -= 1
            return value
        }
        return nil
    }
    
    public func peek() -> Type? {
        if let head = head {
            return head.value
        }
        return nil
    }
    
    
    
    
}
