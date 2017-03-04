//
//  TodayViewController.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/18/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

// View Controller that controls the Today first page.
class TodayViewController: UIViewController {
    
    // Connections to each of the labels in the today page
    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var prepTimeLabel: UILabel!
    @IBOutlet weak var cookTimeLabel: UILabel!
    @IBOutlet weak var servingsLabel: UILabel!
    @IBOutlet weak var recipeDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        
        // This sets the labels for the page to show the current day's information. The data for this comes from TodaysMealData
        super.viewDidLoad()
        recipeNameLabel.text = recipeName
        recipeImage.image = UIImage(named: recipePicture)
        prepTimeLabel.text = String(prepTime)
        cookTimeLabel.text = String(cookTime)
        servingsLabel.text = String(todaysServings)
        recipeDescriptionLabel.text = recipeDescription
        
    }
    
}

