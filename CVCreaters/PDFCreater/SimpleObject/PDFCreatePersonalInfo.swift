//
//  PDFCreatePersonalInfo.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 23/12/2024.
//

import UIKit

extension PDFCreater {
    
    func pdfCreatePersonalInfo(originalPoint: CGPoint) {
        
        guard let phoneImage = UIImage(systemName: "phone"),
              let emailImage = UIImage(systemName: "envelope")
        else { return}
        
        let phonePoint = addPhotoText(originalPoint: originalPoint,
                                      text: phone,
                                      image: phoneImage)
        
        _ = addPhotoText(originalPoint: CGPoint(x: phonePoint.x + 20,
                                                y: phonePoint.y),
                         text: email,
                         image: emailImage)
    }
}
