//
//  RecipeViewController.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/19/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController, UIPageViewControllerDataSource {
    
    private var pageViewController: UIPageViewController?
    
    private let contentImages = ["recipe_pic_1", "recipe_pic_2", "recipe_pic_3", "recipe_pic_4"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPageViewController()
        setupPageControl()
    }
    
    private func createPageViewController() {
        
        let pageController = self.storyboard!.instantiateViewController(withIdentifier: "PageController") as! UIPageViewController
    }
    
}
