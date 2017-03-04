//
//  OuterScheduleViewController.swift
//  Reciply
//
//  Created by Joseph Salmond on 3/2/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

let notificationKey = "notificationKey" // Key for notify function

var currentMeals = thisWeekMeals // The meal names that are displayed in the table view
var currentImages = thisWeekImages // The meal images that are displayed in the table view

// The main view for the schedule view. It contains the header buttons to select the week and a container that contains the actual table view
class OuterScheduleViewController: UIViewController {

    
    
    @IBOutlet weak var thisWeekButton: UIButton!
    @IBOutlet weak var nextWeekButton: UIButton!
    
    // Notifies the table view that the this week or next week buttons were pressed so that it can update
    @IBAction func notify() {
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: notificationKey), object: self)
        
    }
    
    
    @IBAction func thisWeekButtonPressed(_ sender: UIButton) {
        
        thisWeekButton.isEnabled = false
        nextWeekButton.isEnabled = true
        thisWeekButton.setBackgroundImage(#imageLiteral(resourceName: "BoldButton"), for: UIControlState.normal)
        nextWeekButton.setBackgroundImage(#imageLiteral(resourceName: "LightButton"), for: UIControlState.normal)
        currentMeals = thisWeekMeals
        currentImages = thisWeekImages
        notify()
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
        notify()
        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    
}
