//
//  ViewController.swift
//  The Book
//
//  Created by Milovan Arsul on 11.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private func main(){
        let noapteBuna: Book = Book(title: "Noapte buna, copii!")
        let rpGheo: Author = Author(name: "Radu Pavel", surname: "Gheo")
        noapteBuna.addAuthor(author: rpGheo)
        
        let cap1: Section = Section(sectionTitle: "Capitolul 1")
        let cap11: Section = Section(sectionTitle: "Capitolul 1.1")
        let cap111: Section = Section(sectionTitle: "Capitolul 1.1.1")
        let cap1111: Section = Section(sectionTitle: "Capitolul 1.1.1.1")
        
        noapteBuna.addContent(content: Paragraph(paragraphText: "Multumesc celor care ..."))
        noapteBuna.addContent(content: cap1)
        
        cap1.add(element: Paragraph(paragraphText: "Moto capitol") as Element)
        cap1.add(element: cap11)
        
        cap11.add(element: Paragraph(paragraphText: "Text from subchapter 1.1") as! Element)
        cap11.add(element: cap111)
        
        cap111.add(element: Paragraph(paragraphText: "Text from subchapter 1.1.1") as! Element)
        cap111.add(element: cap1111)
        
        cap1111.add(element: Image(url: "Image subchapter 1.1.1.1") as! Element)
        
        noapteBuna.print()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        main()
    }


}

