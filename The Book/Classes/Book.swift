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
    var chapters = [Chapter]()
    
    init(title: String?){
        self.title = title!
    }
    
    public func addAuthor(author: Author){
        self.authors.append(author)
    }
    
    public func createChapter(chapterName: String?) -> Int{
        let chapter = Chapter(name: chapterName)
        self.chapters.append(chapter)
        return self.chapters.count
    }
    
    public func getChapter(chapterIndex: Int) -> Chapter{
        return self.chapters[chapterIndex - 1]
    }
    
    public func print(){
        Swift.print(title!)
        Swift.print(authors)
        Swift.print(chapters)
    }
    
}
