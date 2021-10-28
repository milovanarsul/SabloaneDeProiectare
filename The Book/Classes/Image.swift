//
//  Image.swift
//  The Book
//
//  Created by Milovan Arsul on 12.10.2021.
//

import Foundation

public class Image: Element {
    var url: String?
    
    init(url: String?){
        self.url = url!
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
        Swift.print("Image with name: " + self.url!)
    }
}
