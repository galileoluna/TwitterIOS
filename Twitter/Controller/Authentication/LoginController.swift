//
//  LoginController.swift
//  Twitter
//
//  Created by Galileo Luna on 24/10/2020.
//  Copyright © 2020 Galileo Luna. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    
    //Properties
    private let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "TwitterLogo")
        return iv
    }()
    
  public lazy var emailContainerView: UIView = {
        let image = #imageLiteral(resourceName: "mail")
        let view = Utilities().inputContainerCiew(withImage: image,textField: emailTextField)
        
        return view
    }()
    public lazy var passwordContainerView: UIView = {
        let image = #imageLiteral(resourceName: "ic_lock_outline_white_2x")
        let view = Utilities().inputContainerCiew(withImage: image,textField: passwordTextField)
        
        return view
      }()
    
    private let emailTextField: UITextField = {
        let tf = Utilities().textField(withPlaceholder: "Email")
        return tf
    }()
    
    private let passwordTextField: UITextField = {
            let tf = Utilities().textField(withPlaceholder: "Password")
            tf.isSecureTextEntry = true
            return tf
       }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .white
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    private let dontHaveAccountButton: UIButton = {
        let button = Utilities().attributedButton(firstPart: "Dont have an account", secondPart: " Sing Up")
        button.addTarget(self, action: #selector(handleShowSignUp), for: .touchUpInside)
        return button
    }()
    
    
    //Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //Selector
    @objc func handleShowSignUp(){
        let controller = RegistrationController()
        navigationController?.pushViewController(controller, animated: true)
        
    }
    
    
    @objc func handleLogin(){
        print("handle ")
    }
    
    
    //Helpers
    
    func configureUI(){
        view.backgroundColor = .twitterBlue
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(logoImageView)
        logoImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
        logoImageView.setDimensions(width: 150, height: 150)
        
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView,passwordContainerView, loginButton])
        
        stack.axis = .vertical
        stack.spacing = 8
        stack.distribution = .fillEqually
        
        view.addSubview(stack)
        stack.anchor(top: logoImageView.bottomAnchor , left: view.leftAnchor
                    , right: view.rightAnchor, paddingLeft: 32, paddingRight: 32)
        view.addSubview(dontHaveAccountButton)
        dontHaveAccountButton.anchor(left:view.leftAnchor,
                                     bottom: view.safeAreaLayoutGuide.bottomAnchor,
                                     right: view.rightAnchor, paddingLeft: 40,paddingRight: 40)
        
        
        
    }
}
