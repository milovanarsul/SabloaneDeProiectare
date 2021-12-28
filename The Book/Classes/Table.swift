//
//  Table.swift
//  The Book
//
//  Created by Milovan Arsul on 12.10.2021.
//

import Foundation

public class Table: Element, Equatable, Visitee{
    var title: String?
    
    init(title: String?){
        self.title = title!
    }
    
    public func add(element: Element) {}
    
    public static func == (lhs: Table, rhs: Table) -> Bool {
        return lhs == rhs
    }
    
    public func remove(element: Element) {}
    
    public func get(elementIndex: Int) -> Element? {return nil}
    
    public func render(){
        Swift.print("Table with title: " + self.title!)
    }
    
    public func accept(visitor: Visitor) {
        visitor.visit(table: self)
    }
}
