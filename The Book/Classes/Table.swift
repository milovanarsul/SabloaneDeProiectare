//
//  Table.swift
//  The Book
//
//  Created by Milovan Arsul on 12.10.2021.
//

import Foundation

public class Table{
    var title: String?
    
    init(tableTitle: String?){
        self.title = tableTitle!
    }
    
    public func print(){
        Swift.print("Table with title: " + self.title!)
    }
}
