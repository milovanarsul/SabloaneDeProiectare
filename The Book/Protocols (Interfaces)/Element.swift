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
}
