//
//  ImageProxy.swift
//  The Book
//
//  Created by Milovan Arsul on 08.11.2021.
//

import Foundation

public class ImageProxy: Element{
    
    var url: String?
    var dim: Dimension?
    var realImg: Image?
    
    //init does not conform to given diagram
    init(url: String?){
        self.url = url
        self.realImg = Image() // this is equivalent to null, but in Swift you cannot assign variables/objects with null
    }
    
    private func loadImage() -> Image{
        if realImg == nil {
            self.realImg = Image(url: self.url)
        }
        return self.realImg!
    }
    
    public func print() {}
    
    public func add(element: Element) {}
    
    public func remove(element: Element) {}
    
    public func get(elementIndex: Int) -> Element {return 0 as! Element}
    
    public func isEqual(to: Element) -> Bool {return false}
}
