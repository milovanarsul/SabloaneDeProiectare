//
//  Visitor.swift
//  The Book
//
//  Created by Milovan Arsul on 06.12.2021.
//

import Foundation

public protocol Visitor{
    func visit(book: Book)
    func visit(section: Section)
    func visit(tableOfContents: TableOfContents)
    func visit(paragraph: Paragraph)
    func visit(imageProxy: ImageProxy)
    func visit(table: Table)
}
