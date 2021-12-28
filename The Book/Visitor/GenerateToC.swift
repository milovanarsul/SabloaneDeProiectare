//
//  GenerateToC.swift
//  The Book
//
//  Created by Milovan Arsul on 06.12.2021.
//

import Foundation
import UIKit

public class GenerateToC: Visitor{
    
    var tableOfContents = TableOfContents(title: "Table of Contents")
    var sectionNumber: Int = 0
    var paragraphNumber: Int = 0

    public func getToC() -> TableOfContents? {
        return tableOfContents
    }
    
    public func visit(book: Book) {}
    
    public func visit(section: Section) {
        self.sectionNumber += 1
        self.paragraphNumber = 0
        
        let section = Section(sectionTitle: "\(String(describing: section.title)) .......... \(sectionNumber)")
        tableOfContents.add(element: section)
    }
    
    public func visit(tableOfContents: TableOfContents) {}
    
    public func visit(paragraph: Paragraph) {
        self.paragraphNumber += 1
        
        let paragraph = Paragraph(paragraphText: "\(String(describing: paragraph.text)) ............ \(sectionNumber).\(paragraphNumber)")
        tableOfContents.add(element: paragraph)
    }
    
    public func visit(imageProxy: ImageProxy) {
        self.paragraphNumber += 1
        
        let imageProxy = ImageProxy(url: "\(String(describing: imageProxy.url)) ...............\(sectionNumber).\(paragraphNumber)")
        tableOfContents.add(element: imageProxy)
    }
    
    public func visit(table: Table) {
        self.paragraphNumber += 1
        
        let table = Table(title: "\(String(describing: table.title)) ...............\(sectionNumber).\(paragraphNumber)")
        tableOfContents.add(element: table)
    }
    
    public func visit(image: Image) {
        self.paragraphNumber += 1
        
        let image = Image(url: "\(String(describing: image.url)) ...............\(sectionNumber).\(paragraphNumber)")
        tableOfContents.add(element: image)
        
    }
}
