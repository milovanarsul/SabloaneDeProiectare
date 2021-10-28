//
//  Section.swift
//  The Book
//
//  Created by Milovan Arsul on 28.10.2021.
//

import Foundation

public class Section: Element{
    var title: String?
    public var children = [Element]()
    
    init(sectionTitle: String?){
        self.title = sectionTitle!
    }
    
    public func add(element: Element) {
        children.append(element)
    }
    
    public func remove(element: Element) {
        let index = self.children.firstIndex(of: element)
        self.children = children.remove(at: index)
    }
    
    public func get(elementIndex: Int) -> Element{
        return children[elementIndex]
    }
    
    public func print() {
        Swift.print(self.title!)
        for child in children{
            printType(content: child)
        }
    }
}
