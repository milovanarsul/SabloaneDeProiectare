//
//  ViewController.swift
//  The Book
//
//  Created by Milovan Arsul on 11.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private func main(){
        let cap1: Section = Section(sectionTitle: "Capitolul 1")
        let p1: Paragraph = Paragraph(paragraphText: "Paragraph 1")
        cap1.add(element: p1)
        
        let p2: Paragraph = Paragraph(paragraphText: "Paragraph 2")
        cap1.add(element: p2)
        
        let p3: Paragraph = Paragraph(paragraphText: "Paragraph 3")
        cap1.add(element: p3)
        
        let p4: Paragraph = Paragraph(paragraphText: "Paragraph 4")
        cap1.add(element: p4)
        
        cap1.add(element: ImageProxy(url: "ImageOne"))
        cap1.add(element: Image(url: "ImageTwo"))
        cap1.add(element: Paragraph(paragraphText: "Some text"))
        cap1.add(element: Table(something: "Table1"))
        
        let stats: BookStatistics = BookStatistics()
        cap1.accept(visitor: stats)
        stats.printStatistics()
        
        let generatedTableOfContents = GenerateToC()
        cap1.accept(visitor: generatedTableOfContents)
        generatedTableOfContents.getToC().render()
        
    }

    override func viewDidLoad(){
        super.viewDidLoad()
        main()
    }
}

