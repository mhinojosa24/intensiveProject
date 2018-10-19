//
//  UIButton+Extension.swift
//  intesiveProject
//
//  Created by Maximo Hinojosa on 10/19/18.
//  Copyright © 2018 Maximo Hinojosa. All rights reserved.
//

import UIKit

extension UIButton {
    public convenience init(title: String, borderColor: UIColor) {
        self.init()
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 2
        self.layer.borderColor = borderColor.cgColor
        self.setAnchor(width: 0, height: 50)
    }
    
}
