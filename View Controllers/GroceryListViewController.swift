//
//  GroceryListViewController.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/21/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

class GroceryListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    // These arrays should actualyl be coming from the data section
    var groceryItems = [["PRODUCE", "Carrots", "Peas"], ["DAIRY", "Cheese", "Milk"], ["BAKERY", "Bread", "Rolls", "Cake"]]
    
    
    internal func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
        
    }
    
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return groceryItems[section].count - 1
        
    }
    
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = groceryItems[indexPath.section][indexPath.row + 1]
        
        return cell
        
    }
    
    
    internal func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            groceryItems.remove(at: indexPath.row) // removes from Table View but still leaves in array. Do we want to change this?
            tableView.reloadData()
            
        }
        
    }
    
    
    internal func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return groceryItems[section][0]
        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    
}



