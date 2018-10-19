//
//  SignupView.swift
//  intesiveProject
//
//  Created by Maximo Hinojosa on 10/19/18.
//  Copyright © 2018 Maximo Hinojosa. All rights reserved.
//

import UIKit


class SignUpView: UIView {
    
    let backgroundImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "skateboard")
        iv.contentMode = .scaleAspectFill
        
        return iv
    }()
    
    let nametextField: UITextField = {
        let tf = UITextField(placeHolder: "Name")
        return tf
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    func setupViews() {
        self.addSubview(backgroundImageView)
        backgroundImageView.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented ")
    }
}
