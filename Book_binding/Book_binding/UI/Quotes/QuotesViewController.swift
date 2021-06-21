//
//  QuotesViewController.swift
//  Book_binding
//
//  Created by Светлана Люкина on 22.06.2021.
//

import UIKit

class QuotesViewController: UIViewController {

    var quotes = [String]()
    let countColumnCells = 1
    let offset:CGFloat = 10.0
    let cellId = "idCell"
    
    @IBOutlet weak var allQuotesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        allQuotesCollectionView.dataSource = self
        allQuotesCollectionView.delegate = self
        
        for i in 1...4 {
            let quote = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
            quotes.append(quote)
        }

        allQuotesCollectionView.register(UINib(nibName: "QuotesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: cellId)
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

extension QuotesViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = allQuotesCollectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! QuotesCollectionViewCell
        let quoteText = quotes[indexPath.item]
        cell.quotesTextView.text = quoteText
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameCollectionView = allQuotesCollectionView.frame
        let widthCell = frameCollectionView.width/CGFloat(countColumnCells)
        let heightCell = widthCell + 10
        
        let spacing = CGFloat(countColumnCells + 1) * offset / CGFloat(countColumnCells)
        return CGSize(width: widthCell - spacing - 35, height: heightCell - (offset*2))
        //35 - spacing of right/left border
    }
    
    
}
