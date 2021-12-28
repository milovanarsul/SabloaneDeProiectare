//
//  BookStatistics.swift
//  The Book
//
//  Created by Milovan Arsul on 06.12.2021.
//

import Foundation

public class BookStatistics: Visitor{
    
    var imagesCounter: Int = 0
    var tablesCounter: Int = 0
    var paragraphsCounter: Int = 0;
    
    init(){}
    
    public func visit(book: Book) {}
    
    public func visit(section: Section) {}
    
    public func visit(tableOfContents: TableOfContents) {}
    
    public func visit(paragraph: Paragraph) {
        self.paragraphsCounter += 1
    }
    
    public func visit(imageProxy: ImageProxy) {
        self.imagesCounter += 1
    }
    
    public func visit(table: Table) {
        self.tablesCounter += 1
    }
    
    public func visit(image: Image) {
        self.imagesCounter += 1
    }
    
    public func printStatistics(){
        Swift.print("Book Statistics: \n")
        Swift.print("*** Number of images: \(self.imagesCounter)\n")
        Swift.print("*** Number of tables: \(self.tablesCounter)\n")
        Swift.print("*** Number of paragraphs: \(self.paragraphsCounter)\n")
    }
}
