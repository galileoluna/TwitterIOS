//
//  FeedController.swift
//  Twitter
//
//  Created by Galileo Luna on 24/10/2020.
//  Copyright © 2020 Galileo Luna. All rights reserved.
//

import UIKit

class FeedController : UIViewController{
    
    // Properties
    
    
    // Lifecycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
      
        
    }
    // Helper
    
    func configureUI(){
          view.backgroundColor = .white
        
          let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
    
}


