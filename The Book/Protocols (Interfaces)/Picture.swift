//
//  Picture.swift
//  The Book
//
//  Created by Milovan Arsul on 08.11.2021.
//

import Foundation

public protocol Picture {
    func url() -> String
    func dim() -> Dimension
    func content() -> ImageContent
}
