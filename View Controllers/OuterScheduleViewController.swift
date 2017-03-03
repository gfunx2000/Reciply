//
//  OuterScheduleViewController.swift
//  Reciply
//
//  Created by Joseph Salmond on 3/2/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

class OuterScheduleViewController: UIViewController {
    
    
    @IBOutlet weak var thisWeekButton: UIButton!
    @IBOutlet weak var nextWeekButton: UIButton!
    
    
    @IBAction func thisWeekButtonPressed(_ sender: UIButton) {
        thisWeekButton.isEnabled = false
        nextWeekButton.isEnabled = true
        thisWeekButton.setBackgroundImage(#imageLiteral(resourceName: "BoldButton"), for: UIControlState.normal)
        nextWeekButton.setBackgroundImage(#imageLiteral(resourceName: "LightButton"), for: UIControlState.normal)
        currentMeals = thisWeekMeals
        currentImages = thisWeekImages
        // reload table view
    }
    
    
    @IBAction func nextWeekButtonPressed(_ sender: UIButton) {
        nextWeekButton.isEnabled = false
        thisWeekButton.isEnabled = true
        nextWeekButton.setBackgroundImage(#imageLiteral(resourceName: "BoldButton"), for: UIControlState.normal)
        thisWeekButton.setBackgroundImage(#imageLiteral(resourceName: "LightButton"), for: UIControlState.normal)
        currentMeals = nextWeekMeals
        currentImages = nextWeekImages
        // refresh table view?
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}
