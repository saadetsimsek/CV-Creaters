//
//  PDFCreater.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 20/12/2024.
//

import Foundation
import UIKit

final class PDFCreater {
    let name: String
    let email: String
    let phone: String
    let experience: Int
    let image: UIImage
    
    var currentPageRect = CGRect()
    
    init(name: String, email: String, phone: String, experience: Int, image: UIImage, currentPageRect: CGRect = CGRect()) {
        self.name = name
        self.email = email
        self.phone = phone
        self.experience = experience
        self.image = image
        self.currentPageRect = currentPageRect
    }
}

