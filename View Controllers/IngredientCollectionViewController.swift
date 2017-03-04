//
//  IngredientCollectionViewController.swift
//  Reciply
//
//  Created by Joseph Salmond on 3/4/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

class IngredientCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var ingredientNames = ["Ingredient 1", "Ingredient2", "Ingredient 3", "Ingredient 4", "Ingredient 5"]
    var ingredientQuantity = ["5 oz", "1/2 tsp", "1/4 cup", "1/2 cup", "1 lb"]
    var ingredientImages = ["Ingr_1.jpg", "Ingr_2.jpg", "Ingr_3.jpg", "Ingr_4.jpg", "Ingr_5.jpg"]
    
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return ingredientNames.count
    
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for:indexPath) as! IngredientCollectionViewCell
        
        cell.ingredientName?.text = ingredientNames[indexPath.row]
        cell.ingredientAmount?.text = ingredientQuantity[indexPath.row]
        cell.ingredientImage?.image = UIImage(named: ingredientImages[indexPath.row])
        
        return cell
        
    }
  
    
    
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()

    }
    


}
