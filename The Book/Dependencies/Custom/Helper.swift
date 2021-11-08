//
//  Helper.swift
//  The Book
//
//  Created by Milovan Arsul on 08.11.2021.
//

import Foundation

//func used to print different types of Objects

public func printType(content: Element){
    switch content{
    case is Section: content.print()
    case is TableOfContents: content.print()
    case is Paragraph: content.print()
    case is Image: content.print()
    default: content.print()
    }
}

//func used to get time in Milliseconds

public func getCurrentTimeInMilliseconds() -> Int64
{
     return Int64(Date().timeIntervalSince1970 * 1000)
}
