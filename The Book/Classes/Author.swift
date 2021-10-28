//
//  Author.swift
//  The Book
//
//  Created by Milovan Arsul on 11.10.2021.
//

import Foundation

public class Author {
    var name: String?
    var surname: String?
    
    init(name: String?, surname: String?){
        self.name = name!
        self.surname = surname!
    }
    
    public func print(){
        Swift.print("Author name: " + self.name!)
    }
}
