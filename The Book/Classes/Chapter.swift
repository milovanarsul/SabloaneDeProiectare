//
//  Chapter.swift
//  The Book
//
//  Created by Milovan Arsul on 11.10.2021.
//

import Foundation

public class Chapter{
    var name: String?
    var subChapters = [SubChapter]()
    
    init(name: String?){
        self.name = name
    }
    
    public func createSubChapter(subChapterName: String?) -> Int{
        let subChapter = SubChapter(subChapterName: subChapterName!)
        self.subChapters.append(subChapter)
        return subChapters.count
    }
    
    public func getSubChapter(subChapterIndex: Int) -> SubChapter{
        return self.subChapters[subChapterIndex - 1]
    }
    
    public func print(){
        Swift.print("Chapter Name: " + self.name!)
        Swift.print(subChapters)
    }
}
