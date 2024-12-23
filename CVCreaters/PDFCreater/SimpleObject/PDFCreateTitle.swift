//
//  PDFCreateTitle.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 23/12/2024.
//

import Foundation
import PDFKit

extension PDFCreater {
    func pdfCreateTitle(originalPoint: CGPoint) -> CGPoint {
        let nameText = addText(originalPoint: originalPoint,
                               text: name,
                               type: .bold,
                               size: 30,
                               color: .black)
        let developer = addText(originalPoint: CGPoint(x: nameText.minX, y: nameText.maxY),
                                text: "Junior İOS Developer",
                                type: .regular,
                                size: 26,
                                color: .darkGray)
        
        return CGPoint(x: developer.minX, y: developer.maxY) // after
    }
}
