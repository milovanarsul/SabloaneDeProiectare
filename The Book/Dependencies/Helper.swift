//
//  Helper.swift
//  The Book
//
//  Created by Milovan Arsul on 04.11.2021.
//

import Foundation

public func printType(content: Element){
    switch content{
    case is Section: content.print()
    case is TableOfContents: content.print()
    case is Paragraph: content.print()
    case is Image: content.print()
    default: content.print()
    }
}
