//
//  GenerateToC.swift
//  The Book
//
//  Created by Milovan Arsul on 06.12.2021.
//

import Foundation
import UIKit

public class GenerateToC: Visitor{
    
    public func getToC() -> TableOfContents{
        return 0 as! TableOfContents
    }
    
    public func visit(book: Book) {}
    
    public func visit(section: Section) {
        TableOfContents.sections.append(contentsOf: section)
    }
    
    public func visit(tableOfContents: TableOfContents) {}
    
    public func visit(paragraph: Paragraph) {}
    
    public func visit(imageProxy: ImageProxy) {}
    
    public func visit(table: Table) {}
}
