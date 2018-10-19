//
//  LoginView.swift
//  intesiveProject
//
//  Created by Maximo Hinojosa on 10/17/18.
//  Copyright © 2018 Maximo Hinojosa. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginView: UIView {
    
    var loginAction: (() -> Void)?
    var signupAction: (() -> Void)?
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setup()
    }
    
    fileprivate func setup(){
        let stackView = mainStackView()
        addSubview(backgroundImageView)
        addSubview(stackView)
        
        backgroundImageView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        //constrsints
        stackView.setAnchor(width: self.frame.width - 60, height: 210)
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
    }
    
    let backgroundImageView: UIImageView =  {
        let iv = UIImageView()
        iv.image = UIImage(named: "skateboard")
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField(placeHolder: "Email")
        return tf
    }()
    
    let passwordTextField: UITextField = {
        var tf = UITextField(placeHolder: "Password")
        return tf
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(title: "Log in", borderColor: UIColor.greenBorderColor)
        button.addTarget(self, action: #selector (handleLogin), for: .touchUpInside)
        return button
    }()
    
    let signupButton: UIButton = {
        let button = UIButton(title: "Sign in", borderColor: UIColor.redBorderColor)
        button.addTarget(self, action: #selector(handleSignup), for: .touchUpInside)
        
        return button
    }()
    
    func mainStackView() -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: [emailTextField,
                                                       passwordTextField,
                                                       loginButton,
                                                       signupButton])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        return stackView
    }
    
    
    
    @objc func handleLogin(){
        print("hi")
    }
    @objc func handleSignup(){
        let email = "dummmmm@gmail.com"
        let password = "hello"
        print("about to reguister A NEW USER")
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            // ...
            
            guard let user = authResult?.user else { return }
            print(user.uid)
        }
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

