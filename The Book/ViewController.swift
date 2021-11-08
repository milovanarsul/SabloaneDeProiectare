//
//  ViewController.swift
//  The Book
//
//  Created by Milovan Arsul on 11.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private func main(){
        var startTime = getCurrentTimeInMilliseconds()
        
        let img1: ImageProxy = ImageProxy(url: "Pamela Anderson")
        let img2: ImageProxy = ImageProxy(url: "Kim Kardashian")
        let img3: ImageProxy = ImageProxy(url: "Kirby Griffin")
        
        let playboyS1: Section = Section(sectionTitle: "Front Cover")
        playboyS1.add(element: img1)
        
        let playboyS2: Section = Section(sectionTitle: "Summer Girls")
        playboyS2.add(element: img2)
        playboyS2.add(element: img3)
        
        let playboy: Book = Book(title: "Playboy")
        playboy.addContent(content: playboyS1)
        playboy.addContent(content: playboyS2)
        
        var endTime = getCurrentTimeInMilliseconds()
        Swift.print("Creation of the content took \(endTime - startTime) milliseconds")
        
        startTime = getCurrentTimeInMilliseconds()
        playboyS1.print()
        endTime = getCurrentTimeInMilliseconds()
        
        Swift.print("Printing the section 1 took \(endTime - startTime) milliseconds")
        
        startTime = getCurrentTimeInMilliseconds()
        playboyS1.print()
        endTime = getCurrentTimeInMilliseconds()
        
        Swift.print("Printing again the section 1 took \(endTime - startTime) milliseconds")
    }

    override func viewDidLoad(){
        super.viewDidLoad()
        main()
    }


}

