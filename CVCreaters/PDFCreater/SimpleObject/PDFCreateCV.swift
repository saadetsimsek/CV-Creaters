//
//  PDFCreateCV.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 23/12/2024.
//

import Foundation
import PDFKit

extension PDFCreater {
    func pdfCreateCV(context: CGContext) {
        let photoOriginalPoint = CGPoint(x: 10, y: 10)
        let imageRect = addImage(originalPoint: photoOriginalPoint,
                                 image: image,
                                 size: currentPageRect.width * 0.2)
        
        let titlePoint = pdfCreateTitle(originalPoint: CGPoint(x: imageRect.maxX + 10,
                                              y: imageRect.minY + 5))
        pdfCreatePersonalInfo(originalPoint: CGPoint(x: titlePoint.x, y: titlePoint.y + 10))
    }
}
