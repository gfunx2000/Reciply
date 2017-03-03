//
//  ScheduleViewController.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/24/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit



class ScheduleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
    internal func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return thisWeekMeals.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "Cell2", for: indexPath) as! ScheduleTableViewCell
        let mealNumber = currentMeals[indexPath.row]
        cell2.mealName?.text = mealNumber
        cell2.mealImage?.image = UIImage(named: currentImages[indexPath.row])
        //cell2.textLabel?.text = thisWeekMeals[indexPath.row]
        
        return cell2
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}






//default starting point

// Move this to a data file but...
// Arrays...
// thisWeekMealPicturesArray, thisWeekMealNamesArray
// nextWeekMealPicturesArray, nextWeekMealNamesArray
// Should arrays of details for detail views also go here???
// that would be thisWeekPrepTimeArray, thisWeekCookTimeArray, thisWeekServingsArray (all default except for user changes), thisWeekDescriptionArray
// and nextWeekPrepTimeArray, nextWeekCookTimeArray, nextWeekServingsArray (all default except for user changes), nextWeekDescriptionArray



//func buttonRightPressed() {
//    buttonRight = enabled
//    buttonleft = disabled
//    buttonRight.alpha = 1
//    buttonLeft.alpha = 0.5
//    tableView displays nextWeekArray
//}
//
//func buttonLeftPressed() {
//    buttonLeft = enabled
//    buttonRight = disabled
//    buttonLeft.alpha = 1
//    buttonRight.alpha = 0.5
//    tableView displays thisWeekArray
//}
//
//// default starting point (viewDidLoad? or sooner?)...
//buttonLeftPressed()
//
//
//if buttonRight pressed {
//    buttonRightPressed()
//}
//
//
//if buttonLeft pressed {
//    buttonLeftPressed()
//}

//// Turns Day buttons to faded out if not cooking that day
//// Need to add a function that adjust all of this in the array if button is touched
//// Need to make a version of this for each week's array
//for all days {
//    if cookThisDay... array == TRUE {
//        dayButton.alpha = 1
//    } else {
//        dayButton.alpha = 0.5
//    }
//}
