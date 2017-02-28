//
//  PageItemController.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/27/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

class PageItemController: UIViewController {
 
    // Variables that hold the names for the recipe step images and instructions
    var itemIndex: Int = 0
    var imageName: String = ""
    var labelName: String = ""
        
        {
        
        didSet {
            
            if let imageView = contentImageView {
                imageView.image = UIImage(named: imageName)
            }
            
        }
    }
    
    @IBOutlet var contentImageView: UIImageView? // Recipe picture
    
    @IBOutlet weak var contentLabelView: UILabel! // Recipe Instructions
    
    // Sets the image and label to the current variables
    override func viewDidLoad() {
        super.viewDidLoad()
        contentImageView!.image = UIImage(named: imageName)
        contentLabelView!.text = labelName
    }
    
}
