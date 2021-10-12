//
//  SubChapter.swift
//  The Book
//
//  Created by Milovan Arsul on 12.10.2021.
//

import Foundation

public class SubChapter {
    var name: String?
    var paragraphs = [Paragraph]()
    var images = [Image]()
    var tables = [Table]()
    
    init(subChapterName: String?){
        self.name = subChapterName!
    }
    
    public func createNewParagraph(paragraphContents: String?){
        let paragraph = Paragraph(paragraphText: paragraphContents!)
        self.paragraphs.append(paragraph)
    }
    
    public func createNewImage(imageName: String?){
        let image = Image(imageName: imageName!)
        self.images.append(image)
    }
    
    public func createNewTable(tableName: String?){
        let table = Table(tableTitle: tableName)
        self.tables.append(table)
    }
    
    public func print(){
        Swift.print("Subchapter: " + self.name!)
        
        for paragraph in paragraphs {
            paragraph.print()
        }
        
        for image in images {
            image.print()
        }
        
        for table in tables{
            table.print()
        }
    }
}
