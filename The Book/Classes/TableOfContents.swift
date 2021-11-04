//
//  TableOfContents.swift
//  The Book
//
//  Created by Milovan Arsul on 12.10.2021.
//

import Foundation

public class TableOfContents: Element, Equatable{
    var something: String?
    
    init(something: String?){
        self.something = something
    }
    
    public func add(element: Element) {
        Swift.print("?")
    }
    
    public static func == (lhs: TableOfContents, rhs: TableOfContents) -> Bool {
        return lhs == rhs
    }
    
    public func remove(element: Element) {
        Swift.print("?")
    }
    
    public func get(elementIndex: Int) -> Element{
        return 0 as! Element
    }

    public func print(){
        Swift.print("Table of contents: " + self.something!)
    }
}
