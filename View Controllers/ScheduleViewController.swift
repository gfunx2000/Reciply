//
//  ScheduleViewController.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/24/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

// Controls the actual table view linked out to by the container in OuterScheduleViewController
class ScheduleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet var tableView: UITableView!
    
    
    internal func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    // Sets the number of rows to match the number of meals. Should usually be 7
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return thisWeekMeals.count
        
    }
    
    // Sets the table view to show the meal name and image for the current week (set in OuterScheduleViewController) in each cell.
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
        NotificationCenter.default.addObserver(self, selector: #selector(ScheduleViewController.actOnNotification), name: NSNotification.Name(rawValue:notificationKey), object: nil) // Listens for notification from the notify func in OuterScheduleViewController to update the table view
        
    }
    
    
    // reloads the table when it receives notification that the this week or next week button was pressed
    func actOnNotification() {
        
        self.tableView.reloadData()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    
}


