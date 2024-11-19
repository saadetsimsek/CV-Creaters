//
//  UILabel+Extensions.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 19/11/2024.
//

import UIKit

extension UILabel {
    convenience init(text: String = ""){
        self.init()
        self.text = text
        self.textColor = .lightGray
        self.font = .systemFont(ofSize: 12)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
