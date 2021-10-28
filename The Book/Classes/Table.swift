//
//  Table.swift
//  The Book
//
//  Created by Milovan Arsul on 12.10.2021.
//

import Foundation

public class Table: Element{
    var something: String?
    
    init(something: String?){
        self.something = something!
    }
    
    public func add(element: Element) {
        Swift.print("?")
    }
    
    public func remove(element: Element) {
        Swift.print("?")
    }
    
    public func get(elementIndex: Int) -> Element{
        return 0 as! Element
    }
    
    public func print(){
        Swift.print("Table with title: " + self.something!)
    }
}
