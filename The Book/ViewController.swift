//
//  ViewController.swift
//  The Book
//
//  Created by Milovan Arsul on 11.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private func main(){
        let discoTitanic: Book = Book(title: "Disco Titanic")
        let rpGheo: Author = Author(authorName: "Radu Pavel Gheo")
        
        discoTitanic.addAuthor(author: rpGheo)
        let indexChapterOne: Int = discoTitanic.createChapter(chapterName: "Capitolul 1")
        let chp1: Chapter = discoTitanic.getChapter(chapterIndex: indexChapterOne)
        let indexSubChapterOneOne: Int = chp1.createSubChapter(subChapterName: "Subcapitolul 1.1")
        let scOneOne: SubChapter = chp1.getSubChapter(subChapterIndex: indexSubChapterOneOne)
        
        scOneOne.createNewParagraph(paragraphContents: "Paragraph 1")
        scOneOne.createNewParagraph(paragraphContents: "Paragraph 2")
        scOneOne.createNewParagraph(paragraphContents: "Paragraph 3")
        scOneOne.createNewImage(imageName: "Image 1")
        scOneOne.createNewParagraph(paragraphContents: "Paragraph 4")
        scOneOne.createNewTable(tableName: "Table 1")
        scOneOne.createNewParagraph(paragraphContents: "Paragraph 5")
        
        scOneOne.print()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        main()
    }


}

