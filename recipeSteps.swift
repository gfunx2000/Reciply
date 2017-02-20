//
//  recipeSteps.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/19/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

class PageItemController: UIViewController {
    
    var itemIndex: Int = 0
    var imageName: String = "" {
        
        didSet {
            
            if let imageView = contentImageView {
                imageView.image = UIImage(named: imageName)
                
            }
            
        }
    }
    
    @IBOutlet var contentImageView: UIImageView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentImageView!.image = UIImage(named: imageName)
    }
    
}
