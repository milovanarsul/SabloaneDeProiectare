//
//  Book.swift
//  The Book
//
//  Created by Milovan Arsul on 11.10.2021.
//

import Foundation

public class Book {
    var title: String?
    var authors = [Author]()
    var contents = [AnyObject]()
    
    init(title: String?){
        self.title = title!
    }
    
    public func addAuthor(author: Author){
        self.authors.append(author)
    }
    
    public func addContent(content: AnyObject){
        contents.append(content)
    }
    
    public func print(){
        Swift.print("Book: " + title! + "\n")
        
        Swift.print("Authors:")
        for author in authors {
            Swift.print("Author: " + author.name! + " " + author.surname! + "\n")
        }
        
        for content in contents{
            printType(content: content)
        }
    }
}
