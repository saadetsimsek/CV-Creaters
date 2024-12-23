//
//  PDFAddImage.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 23/12/2024.
//

import Foundation
import UIKit

extension PDFCreater {
    func addImage(originalPoint: CGPoint, image: UIImage, size: CGFloat) -> CGRect {
        let aspectWidth = size / image.size.width
        let aspectHeight = size / image.size.height
        let aspectRatio = min(aspectWidth, aspectHeight)
        
        let scaleWidth = image.size.width * aspectRatio
        let scaleHeight = image.size.height * aspectRatio
        
        let imageRect = CGRect(x: originalPoint.x,
                               y: originalPoint.y,
                               width: scaleWidth,
                               height: scaleHeight)
        image.draw(in: imageRect)
        return imageRect
    }
}
