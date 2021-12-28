//
//  Section.swift
//  The Book
//
//  Created by Milovan Arsul on 28.10.2021.
//

import Foundation

public class Section: Element, Equatable, Visitee{

    var title: String?
    public var children = [Element]()
    
    init(sectionTitle: String?){
        self.title = sectionTitle!
    }
    
    public func add(element: Element) {
        children.append(element)
    }
    
    public static func == (lhs: Section, rhs: Section) -> Bool {
        return lhs == rhs
    }
    
    public func remove(element: Element) {
        var index: Int = 0
        for child in children {
            index += 1
            if element.isEqual(to: child){
                children.remove(at: index)
            }
        }
    }
    
    public func get(elementIndex: Int) -> Element{
        return children[elementIndex]
    }
    
    public func render() {
        Swift.print(self.title!)
        for child in children{
            printType(content: child)
        }
    }
    
    public func accept(visitor: Visitor) {
        visitor.visit(section: self)
    }
}
