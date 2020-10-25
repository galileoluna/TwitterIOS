//
//  Utilities.swift
//  Twitter
//
//  Created by Galileo Luna on 24/10/2020.
//  Copyright © 2020 Galileo Luna. All rights reserved.
//

import UIKit

class Utilities{

    func inputContainerCiew(withImage image:UIImage, textField: UITextField) -> UIView {
    let view = UIView()
    let iv = UIImageView()
    view.heightAnchor.constraint(equalToConstant: 50).isActive = true
    iv.image = image
    view.addSubview(iv)
    iv.anchor(left: view.leftAnchor, bottom: view.bottomAnchor,
                   paddingLeft: 8, paddingBottom: 8)
    iv.setDimensions(width: 24, height: 24)
        
        
    view.addSubview(textField)
    textField.anchor(left: iv.rightAnchor, bottom: view.bottomAnchor,
                         right: view.rightAnchor, paddingLeft: 8, paddingBottom: 8)
        
        
   let dividerView = UIView()
   dividerView.backgroundColor = .white
   view.addSubview(dividerView)
        dividerView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor,
                           right: view.rightAnchor, paddingLeft: 8, height: 0.75)
        
        
     
    
    return view
}
    func textField(withPlaceholder placeholder:String) -> UITextField{
        let tf = UITextField()
        tf.placeholder = placeholder
        tf.textColor = .white
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return tf
        
    }
    
    func attributedButton(firstPart: String, secondPart: String) -> UIButton {
        let button = UIButton(type: .system)
        
        let atributedTitle = NSMutableAttributedString(string: firstPart, attributes:
            [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 16),
            NSAttributedString.Key.foregroundColor: UIColor.white])
        
        atributedTitle.append(NSMutableAttributedString(string: secondPart, attributes:
        [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 16),
        NSAttributedString.Key.foregroundColor: UIColor.white]))
        
        button.setAttributedTitle(atributedTitle, for: .normal)
        
        return button
        
        
    }
    
    
}
