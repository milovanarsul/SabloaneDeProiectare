//
//  TableOfContents.swift
//  The Book
//
//  Created by Milovan Arsul on 12.10.2021.
//

import Foundation

public class TableOfContents: Element, Equatable, Visitee{
    
    var title: String?
    var sections = [Section]()
    
    init(title: String?){
        self.title = title
    }
    
    init() {}
    
    public func add(element: Element) {}
    
    public static func == (lhs: TableOfContents, rhs: TableOfContents) -> Bool {
        return lhs == rhs
    }
    
    public func remove(element: Element) {}
    
    public func get(elementIndex: Int) -> Element? {return nil}

    public func render(){
        Swift.print("Table of contents: \n")
        for section in sections{
            section.render()
        }
    }
    
    public func accept(visitor: Visitor) {
        visitor.visit(tableOfContents: self)
        //self.sections.append(contentsOf: visitor)
    }
}
