//
//  Element.swift
//  The Book
//
//  Created by Milovan Arsul on 12.10.2021.
//

import Foundation

public protocol Element{
    func print()
    func add(element: Element)
    func remove(element: Element)
    func get(elementIndex: Int) -> Element
    func isEqual(to: Element) -> Bool
}

extension Element where Self : Equatable {
    public func isEqual (to: Element) -> Bool {
        return (to as? Self).flatMap({ $0 == self }) ?? false
    }
}
