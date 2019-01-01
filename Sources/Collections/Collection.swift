//
//  Collection.swift
//  MoreCollections
//
//  Created by Olav on 28/12/2018.
//

import Foundation

protocol Collection {
    /// Count of collection
    var count: Int { get }
}

extension Collection {
    
    /// True if collection empty,
    /// false if not
    func isEmpty() -> Bool {
        return count == 0
    }
}
