//
//  TodayViewController.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/18/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

var recipeName = "The Recipe Name"
var recipeDescription = "Here are the details about the meal."
var prepTime = 20
var cookTime = 40

class TodayViewController: UIViewController {
    
    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var recipeDescriptionLabel: UILabel!
    @IBOutlet weak var prepTimeLabel: UILabel!
    @IBOutlet weak var cookTimeLabel: UILabel!
    @IBOutlet weak var servingsLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeNameLabel.text = recipeName
        recipeDescriptionLabel.text = recipeDescription
        prepTimeLabel.text = String(prepTime)
        cookTimeLabel.text = String(cookTime)
        servingsLabel.text = String(defaultServings)
    }
    
    

    
    
}

