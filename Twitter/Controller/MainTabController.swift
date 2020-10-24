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
        feed.tabBarItem.image = UIImage(named: "home_unselected")
        
        
        let explore = ExploreController()
        explore.tabBarItem.image = UIImage(named: "search_unselected")
        
        
        let notifications = NotificationsController()
         notifications.tabBarItem.image = UIImage(named: "search_unselected")
        let conversations = ConversationsController()
         conversations.tabBarItem.image = UIImage(named: "search_unselected")
        
        
        viewControllers = [feed, explore, notifications, conversations]
    }
}
