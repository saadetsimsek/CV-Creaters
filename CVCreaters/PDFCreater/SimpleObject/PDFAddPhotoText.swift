//
//  PDFAddPhotoText.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 23/12/2024.
//

import Foundation
import UIKit

extension PDFCreater {
    func addPhotoText(originalPoint: CGPoint, text: String, image: UIImage) -> CGPoint {
        let imagePoint = addImage(originalPoint: originalPoint,
                                  image: image,
                                  size: 20)
        let textPoint = addText(originalPoint: CGPoint(x: imagePoint.maxX + 5,
                                                       y: originalPoint.y),
                                text: text,
                                type: .regular,
                                size: 14,
                                color: .black)
        return CGPoint(x: textPoint.maxX,
                       y: textPoint.minY)
    }
}
