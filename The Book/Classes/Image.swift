//
//  Image.swift
//  The Book
//
//  Created by Milovan Arsul on 12.10.2021.
//

import Foundation

public class Image{
    var imageName: String?
    
    init(imageName: String?){
        self.imageName = imageName
    }
    
    public func print(){
        Swift.print("Image with name: " + self.imageName!)
    }
}
