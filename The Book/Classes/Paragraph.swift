//
//  Paragraph.swift
//  The Book
//
//  Created by Milovan Arsul on 12.10.2021.
//

import Foundation

public class Paragraph{
    var text: String?
    
    init(paragraphText: String?){
        self.text = paragraphText
    }
    
    public func print(){
        Swift.print("Paragraph: " + self.text!)
    }
}
