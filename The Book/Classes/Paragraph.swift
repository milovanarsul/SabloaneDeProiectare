//
//  Paragraph.swift
//  The Book
//
//  Created by Milovan Arsul on 12.10.2021.
//

import Foundation

public class Paragraph: Element, Equatable, Visitee{
    var text: String?
    var textAlignment: AlignStrategy?
    
    init(paragraphText: String?){
        self.text = paragraphText
    }
    
    public func add(element: Element) {}
    
    public static func == (lhs: Paragraph, rhs: Paragraph) -> Bool {
        return lhs == rhs
    }
    
    public func remove(element: Element) {}
    
    public func get(elementIndex: Int) -> Element{
        return 0 as! Element
    }
    
    public func setAlignStrategy(strategy: AlignStrategy){
        self.textAlignment = strategy
    }
    
    public func render(){
        self.textAlignment?.render(paragraph: self.text!)
    }
    
    public func accept(visitor: Visitor) {
        visitor.visit(paragraph: self)
    }
}
