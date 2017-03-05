//
//  IngredientCollectionControllerCell.swift
//  Reciply
//
//  Created by Joseph Salmond on 3/3/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//


import UIKit

class GalleryItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var itemImageView: UIImageView!
    
    func setGalleryItem(_ item:GalleryItem) {
        itemImageView.image = UIImage(named: item.itemImage)
    }
    
}
