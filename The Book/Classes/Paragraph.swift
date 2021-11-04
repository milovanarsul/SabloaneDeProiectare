//
//  Paragraph.swift
//  The Book
//
//  Created by Milovan Arsul on 12.10.2021.
//

import Foundation

public class Paragraph: Element, Equatable{
    var text: String?
    
    init(paragraphText: String?){
        self.text = paragraphText
    }
    
    public func add(element: Element) {
        Swift.print("?")
    }
    
    public static func == (lhs: Paragraph, rhs: Paragraph) -> Bool {
        return lhs == rhs
    }
    
    public func remove(element: Element) {
        Swift.print("?")
    }
    
    public func get(elementIndex: Int) -> Element{
        return 0 as! Element
    }
    
    public func print(){
        Swift.print("Paragraph: " + self.text!)
    }
}
