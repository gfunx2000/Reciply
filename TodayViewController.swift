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

class TodayViewController: UIViewController {
    
    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var recipeDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeNameLabel.text = recipeName
        recipeDescriptionLabel.text = recipeDescription
    }
    
    

    
    
}

