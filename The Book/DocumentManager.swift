//
//  DocumentManager.swift
//  The Book
//
//  Created by Milovan Arsul on 22.11.2021.
//

import Foundation

public class DocumentManager {
    private var book: Book?
    
    private init() {}
    
    //Swift does not have the concept of static for classes, instead it uses final
    private final class SingletonHolder{
        static var instance: DocumentManager = DocumentManager()
    }
    
    public static func getInstance() -> DocumentManager{
        return SingletonHolder.instance
    }
    
    public func getBook() -> Book{
        return self.book!
    }
    
    public func setBook(book: Book) {
        self.book = book
    }
}
