//
//  IngredientsCollectionViewCell.swift
//  Reciply
//
//  Created by Joseph Salmond on 3/3/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

class IngredientsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ingredientButton: UIButton!
    @IBOutlet weak var ingredientName: UILabel!
    
    @IBAction func ingredientButtonPushed(_ sender: UIButton) {
        if ingredientButton.alpha == 1.0 {
            ingredientButton.alpha = 0.50
        } else {
            ingredientButton.alpha = 1.0
        }
    
        
    }
    
}
