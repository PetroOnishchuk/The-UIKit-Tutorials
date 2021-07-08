//
//  CustomUITabBarController.swift
//  UITabBarController&TableVC01
//
//  Created by Petro Onishchuk on 7/8/21.
//

import UIKit

class CustomUITabBarController: UITabBarController {
    
    let allEmojiCategory = EmojiCategory.allCategories

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupTabBarController()
        viewControllers = setupViewControllers()
    }
    
    
    func setupTabBarController() {
        tabBar.barTintColor = .black
        tabBar.backgroundColor = .black
        tabBar.tintColor = .green
    }
    
    func setupViewControllers() -> [UIViewController] {
         var allControllers = [UIViewController]()
        
        for category in allEmojiCategory {
            let tableVC = EmojiTableViewController()
            tableVC.allEmoji = category.emojiList
            tableVC.title = category.name
            tableVC.tabBarItem.image = UIImage(systemName: category.systemImage)
            let mainVC = UINavigationController(rootViewController: tableVC)
            allControllers.append(mainVC)
        }
        
        return allControllers
    }

    
}
