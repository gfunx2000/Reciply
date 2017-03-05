//
//  IngredientsViewController.swift
//  Reciply
//
//  Created by Joseph Salmond on 2/28/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

// View Controller that controls the Ingredients page.
class IngredientsViewController: UICollectionViewController {
    
    fileprivate let reuseIdentifier = "IngredientCell"
    
    @IBAction func dismissIngredients(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return contentImages.count
    }

    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        cell.backgroundColor = UIColor.white
        return cell
    }
    
    
}
