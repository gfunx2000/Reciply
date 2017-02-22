//
//  TodayViewController.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/18/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

// All of these vars should be pulled from the database
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
// We need to add in a link to pull up the recipeImage here.

    
    override func viewDidLoad() {
        
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        appDelegate.shouldRotate = false // or false to disable rotation
       
        
        
        super.viewDidLoad()
        recipeNameLabel.text = recipeName
        recipeDescriptionLabel.text = recipeDescription
        prepTimeLabel.text = String(prepTime)
        cookTimeLabel.text = String(cookTime)
        servingsLabel.text = String(defaultServings)
    }
    
    

    
    
}

