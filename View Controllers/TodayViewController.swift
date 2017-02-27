//
//  TodayViewController.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/18/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

// All of these vars should be pulled from the database and will actually be in TodaysMealData.swift
var recipeName = "Blackened Catfish Tacos"
var recipePicture = "1_main.jpg"
var prepTime = 10
var cookTime = 15
var todaysServings = defaultServings
var recipeDescription = "The lemon basil butter sauce will knock your socks off! And the best part? You can have this dish on your dinner table in less than 30 minutes!"

// View Controller that controls the today page.
class TodayViewController: UIViewController {
    
    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var prepTimeLabel: UILabel!
    @IBOutlet weak var cookTimeLabel: UILabel!
    @IBOutlet weak var servingsLabel: UILabel!
    @IBOutlet weak var recipeDescriptionLabel: UILabel!
    
    
    override func viewDidLoad() {
        
//      let appDelegate = UIApplication.shared.delegate as! AppDelegate
//      appDelegate.shouldRotate = false // or false to disable rotation
        
        
        
        super.viewDidLoad()
        recipeNameLabel.text = recipeName
        recipeImage.image = UIImage(named: recipePicture)
        prepTimeLabel.text = String(prepTime)
        cookTimeLabel.text = String(cookTime)
        servingsLabel.text = String(todaysServings)
        recipeDescriptionLabel.text = recipeDescription
    }
    
    
    
    
    
}

