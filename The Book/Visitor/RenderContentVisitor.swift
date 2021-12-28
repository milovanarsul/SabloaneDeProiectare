//
//  RenderContentVisitor.swift
//  The Book
//
//  Created by Milovan Arsul on 06.12.2021.
//

import Foundation

public class RenderContentVisitor: Visitor{
    public func visit(book: Book) {
        book.render()
    }
    
    public func visit(section: Section) {
        section.render()
    }
    
    public func visit(tableOfContents: TableOfContents) {
        tableOfContents.render()
    }
    
    public func visit(paragraph: Paragraph) {
        paragraph.render()
    }
    
    public func visit(imageProxy: ImageProxy) {
        imageProxy.render()
    }
    
    public func visit(table: Table) {
        table.render()
    }
    
    
}
