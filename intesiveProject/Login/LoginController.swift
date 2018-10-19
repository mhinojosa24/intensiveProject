//
//  ViewController.swift
//  intesiveProject
//
//  Created by Maximo Hinojosa on 10/17/18.
//  Copyright © 2018 Maximo Hinojosa. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginController: UIViewController {
    
    var loginView : LoginView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
        let mainView = LoginView (frame: self.view.frame)
        self.loginView = mainView
        setupView()
        
    }

    func setupView(){
        let mainView = LoginView (frame: self.view.frame)
        self.loginView = mainView
        self.loginView.loginAction = loginPressed
        self.loginView.signupAction = signupPressed
        self.view.addSubview(loginView)
        loginView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        mainView.passwordTextField.isSecureTextEntry = true
    }
    
    func loginPressed(){
        print("Hi")
    }
    
    func signupPressed(){
        let signUpController = SignupController()
        let email = "maximohinojosa13@gmail.com"
        let password = "hello"
        print("about to reguister A NEW USER")
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            // ...
            guard let user = authResult?.user else { return }
            
            print("--------_!!!!!!!!!!!!!_________")
            print(user)
        }
        //present(signUpController, animated: true, completion: nil)
    }
}

