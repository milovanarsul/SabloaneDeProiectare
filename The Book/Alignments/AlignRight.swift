//
//  AlignRight.swift
//  The Book
//
//  Created by Milovan Arsul on 22.11.2021.
//

import Foundation

public class AlignRight: AlignStrategy{
    
    init?() {}
    
    public func render(paragraph: String) {
        Swift.print("\(paragraph) ##")
    }
}
