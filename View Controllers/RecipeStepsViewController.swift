//
//  RecipeStepsViewController.swift
//  Tabbed Reciply
//
//  Created by Joseph Salmond on 2/27/17.
//  Copyright © 2017 Joseph Salmond. All rights reserved.
//


import UIKit

class RecipeStepViewController: UIViewController, UIPageViewControllerDataSource {
    
    
    private var pageViewController: UIPageViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPageViewController()
        
        // Sets the page to landscape for Recipe Steps
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.shouldRotate = true
        
    }
    
    private func createPageViewController() {
        
        let pageController = self.storyboard!.instantiateViewController(withIdentifier: "PageController") as! UIPageViewController
        pageController.dataSource = self
        
        if contentImages.count > 0 {
            let firstController = getItemController(itemIndex: 0)!
            let startingViewControllers = [firstController]
            pageController.setViewControllers(startingViewControllers, direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
        }
        
        pageViewController = pageController
        addChildViewController(pageViewController!)
        self.view.addSubview(pageViewController!.view)
        pageViewController!.didMove(toParentViewController: self)
    }
    
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as! PageItemController
        
        if itemController.itemIndex > 0 {
            return getItemController(itemIndex: itemController.itemIndex-1)
        }
        
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as! PageItemController
        
        if itemController.itemIndex+1 < contentImages.count {
            return getItemController(itemIndex: itemController.itemIndex+1)
        }
        
        return nil
    }
    
    private func getItemController(itemIndex: Int) -> PageItemController? {
        
        if itemIndex < contentImages.count {
            let pageItemController = self.storyboard!.instantiateViewController(withIdentifier: "ItemController") as! PageItemController
            pageItemController.itemIndex = itemIndex
            pageItemController.imageName = contentImages[itemIndex]
            pageItemController.labelName = contentWords[itemIndex]
            return pageItemController
        }
        
        return nil
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return contentImages.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
}
