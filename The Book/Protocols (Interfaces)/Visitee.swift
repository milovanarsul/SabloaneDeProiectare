//
//  Visitee.swift
//  The Book
//
//  Created by Milovan Arsul on 06.12.2021.
//

import Foundation

public protocol Visitee{
    func accept(visitor: Visitor)
}
