//
//  Author.swift
//  The Book
//
//  Created by Milovan Arsul on 11.10.2021.
//

import Foundation

public class Author {
    var name: String?
    
    init(authorName: String?){
        self.name = authorName!
    }
    
    public func print(){
        Swift.print("Author name: " + self.name!)
    }
}
