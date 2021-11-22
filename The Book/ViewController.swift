//
//  ViewController.swift
//  The Book
//
//  Created by Milovan Arsul on 11.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    public func Printing(){
        DocumentManager.getInstance().getBook().print()
    }
    
    private func main(){
        let myBook = Book(title: "My Book")
        DocumentManager.getInstance().setBook(book: myBook)
        
        let me = Author(name: "Myself", surname: "")
        myBook.addAuthor(author: me)
        
        let cap1 = Section(sectionTitle: "Capitolul 1")
        myBook.addContent(content: cap1)
        
        let p1 = Paragraph(paragraphText: "Paragraph 1")
        cap1.add(element: p1)
        
        let p2 = Paragraph(paragraphText: "Paragraph 2")
        cap1.add(element: p2)
        
        let p3 = Paragraph(paragraphText: "Paragraph 1")
        cap1.add(element: p3)
        
        let p4 = Paragraph(paragraphText: "Paragraph 4")
        cap1.add(element: p4)
        
        Swift.print("Printing without Alignment \n")
        cap1.print()
        
        p1.setAlignStrategy(strategy: AlignCenter()!)
        p2.setAlignStrategy(strategy: AlignRight()!)
        p3.setAlignStrategy(strategy: AlignLeft()!)
        
        Swift.print("\nPrinting with Alignment \n")
        cap1.print()
        
        Printing()
    }

    override func viewDidLoad(){
        super.viewDidLoad()
        main()
    }


}

