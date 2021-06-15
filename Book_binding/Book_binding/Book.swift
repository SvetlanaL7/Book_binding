//
//  Book.swift
//  Book_binding
//
//  Created by Светлана Люкина on 08.06.2021.
//

import Foundation
import UIKit

struct Book {
    var name:String
    var author:String
    var image:UIImage
}

class Library {
    
    var books = [Book]()
    
    init() {
        setup()
    }
    
    func setup(){
        let book1 = Book(name: "Мастер и Маргарита", author: "М.А. Булгаков", image: UIImage(named: "Book1")!)
        let book2 = Book(name: "Война и мир", author: "Л.Н. Толстой", image: UIImage(named: "Book1")!)
        let book3 = Book(name: "Преступление и наказание", author: "Ф.М. Достоевский", image: UIImage(named: "Book1")!)
    }
}

