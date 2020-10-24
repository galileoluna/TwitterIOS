//
//  MainTabController.swift
//  Twitter
//
//  Created by Galileo Luna on 24/10/2020.
//  Copyright © 2020 Galileo Luna. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {

    // Properties
    
    
    // Lifecycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()
    }
    
    
    // Helpers
    
    func configureViewControllers(){
   
        
        let feed = FeedController()
        let nav1 = templateNavigationController(image: UIImage(named: "home_unselected"),
                                                rootViewController: feed)
        
        
        let explore = ExploreController()
        let nav2 = templateNavigationController(image: UIImage(named: "search_unselected"), rootViewController: explore)
        
        
        
        let notifications = NotificationsController()
       let nav3 = templateNavigationController(image: UIImage(named: "like_unselected"), rootViewController: notifications)

        let conversations = ConversationsController()
        let nav4 = templateNavigationController(image: UIImage(named: "ic_mail_outline_white_2x-1"), rootViewController: conversations)
        
        
        viewControllers = [nav1, nav2, nav3, nav4]
    }
    func templateNavigationController(image:UIImage?, rootViewController: UIViewController) -> UINavigationController{
                let nav = UINavigationController(rootViewController: rootViewController)
                nav.tabBarItem.image = image
                nav.navigationBar.barTintColor = .white
                return nav
              }
    
}

