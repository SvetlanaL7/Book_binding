//
//  CollectionViewCell.swift
//  Book_binding
//
//  Created by Светлана Люкина on 06.06.2021.
//

import UIKit

class CollectionBookViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bookImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(book:Book){
        self.bookImage.image = book.image
    }

}
