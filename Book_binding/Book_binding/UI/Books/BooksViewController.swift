//
//  BooksViewController.swift
//  Book_binding
//
//  Created by Светлана Люкина on 21.06.2021.
//

import UIKit

class BooksViewController: UIViewController {
    
    var books = [UIImage]()
    let countColumnCells = 2
    let offset:CGFloat = 10.0
    let cellId = "idCell"
    
    @IBOutlet weak var booksCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        booksCollectionView.dataSource = self
        booksCollectionView.delegate = self
        
        for i in 1...15 {
            let book = UIImage(named: "Book\(i)")!
            books.append(book)
        }

        booksCollectionView.register(UINib(nibName: "BooksCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: cellId)
        // Do any additional setup after loading the view.
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension BooksViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return books.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = booksCollectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! BooksCollectionViewCell
        let bookImage = books[indexPath.item]
        cell.booksImageView.image = bookImage
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameCollectionView = booksCollectionView.frame
        let widthCell = frameCollectionView.width/CGFloat(countColumnCells)
        //let widthCell = CGFloat(frameCollectionView/countColumnCells)
        let heightCell = widthCell + 10
        
        let spacing = CGFloat(countColumnCells + 1) * offset / CGFloat(countColumnCells)
        return CGSize(width: widthCell - spacing - 35, height: heightCell - (offset*2))
        //35 - spacing of right/left border
    }
    
    
}
