//
//  ImageProxy.swift
//  The Book
//
//  Created by Milovan Arsul on 08.11.2021.
//

import Foundation

public class ImageProxy: Element, Visitee{
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
    
    public func render(){
        Swift.print(loadImage())
    }
    
    public func add(element: Element) {}
    
    public func remove(element: Element) {}
    
    public func get(elementIndex: Int) -> Element? {return nil}
    
    public func isEqual(to: Element) -> Bool {return false}
    
    public func accept(visitor: Visitor) {
        visitor.visit(imageProxy: self)
    }
}
