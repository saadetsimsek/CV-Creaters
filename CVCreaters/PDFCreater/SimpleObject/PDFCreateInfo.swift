//
//  PDFCreateInfo.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 26/12/2024.
//

import Foundation
import PDFKit

extension PDFCreater {
    func pdfCreateInfo(originalPoint: CGPoint, context: CGContext, title: String, description: String) -> CGRect {
        
        let titlePoint = addText(originalPoint: originalPoint,
                                 text: title,
                                 type: .bold,
                                 size: 20,
                                 color: .black)
        addLine(originalPoint: CGPoint(x: titlePoint.minX,
                                       y: titlePoint.maxY + 5),
                drawContext: context)
        
        let descriptionPoint = addText(originalPoint: CGPoint(x: originalPoint.x,
                                                              y: titlePoint.maxY + 5),
                                       text: description,
                                       type: .regular,
                                       size: 16,
                                       color: .black)
        return descriptionPoint
    }
}
