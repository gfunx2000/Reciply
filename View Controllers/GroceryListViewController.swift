//
//  GroceryListViewController.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/21/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

class GroceryListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var groceryItems = ["Carrots", "Peas", "Cheese", "Milk", "Bread"]
    
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return groceryItems.count
        
    }
    

    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = groceryItems[indexPath.row]
        
        return cell
        
    }
    
    internal func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            groceryItems.remove(at: indexPath.row) // removes from Table View but still leaves in array. Do we want to change this?
            tableView.reloadData()
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}












//
//class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//
//    let cellIdentifier = "CellIdentifier"
//
//    var daysThisWeek = ["M", "T", "W", "T"]
//
//    var mealsThisWeek = ["Meal 1", "Meal 2", "Meal 3", "Meal 4"]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//            return 1
//        }
//
//
//        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return daysThisWeek.count
//        }
//
//
//        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
//
//
//            let days = daysThisWeek[indexPath.row]
//
//            // Configure Cell
//            cell.textLabel?.text = days
//
//            return cell
//        }
//
//}

