//
//  UITextField+Extension.swift
//  intesiveProject
//
//  Created by Maximo Hinojosa on 10/19/18.
//  Copyright © 2018 Maximo Hinojosa. All rights reserved.
//

import UIKit

extension UITextField {
    public convenience init(placeHolder: String){
        self.init()
        self.borderStyle = .none
        self.layer.cornerRadius = 5
        self.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        self.textColor = UIColor.black
        self.font = UIFont.systemFont(ofSize: 17)
        self.autocorrectionType = .no
        self.placeholder = placeHolder
        self.setAnchor(width: 0, height: 50)
        self.setLeftPaddingPoints(20)
        self.backgroundColor = UIColor.clear
        self.alpha = 5
        
    }
}
