//
//  IngredientCollectionViewCell.swift
//  Reciply
//
//  Created by Joseph Salmond on 3/4/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

class IngredientCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var ingredientImage: UIImageView!
    @IBOutlet weak var ingredientName: UILabel!
    @IBOutlet weak var ingredientAmount: UILabel!

    @IBAction func ingredientButtonPressed(_ sender: UIButton) {
        
        if ingredientImage.alpha == 1.0 {
            
            ingredientImage.alpha = 0.25
            ingredientName.alpha = 0.25
            ingredientAmount.alpha = 0.25
            
        } else {
            
            ingredientImage.alpha = 1.0
            ingredientName.alpha = 1.0
            ingredientAmount.alpha = 1.0
        
        }
        
    }
    
    
}
