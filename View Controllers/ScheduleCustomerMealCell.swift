//
//  ScheduleCustomerMealCell.swift
//  Reciply
//
//  Created by Joseph Salmond on 3/1/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var mealPicture: UIImageView!
    @IBOutlet var mealName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

