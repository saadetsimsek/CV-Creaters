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
    }
}
