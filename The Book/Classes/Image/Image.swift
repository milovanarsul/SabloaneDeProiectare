//
//  Image.swift
//  The Book
//
//  Created by Milovan Arsul on 12.10.2021.
//

import Foundation

public class Image: Element, Equatable {
    var url: String?
    var content: ImageContent = ImageContent()
    
    init(url: String?){
        self.url = url!
        let seconds: UInt32 = 5
        usleep(seconds * 1000000)
    }
    
    init?(){return nil}
    
    public func add(element: Element) {
        Swift.print("?")
    }
    
    public static func == (lhs: Image, rhs: Image) -> Bool {
        return lhs == rhs
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
