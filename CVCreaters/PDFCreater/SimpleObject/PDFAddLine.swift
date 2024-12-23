//
//  PDFAddLine.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 23/12/2024.
//

import Foundation
import PDFKit

extension PDFCreater { // pdf sayfasına çizgi ekleme görsel ayırıcı
    func addLine(originalPoint: CGPoint, drawContext: CGContext ){
        
        drawContext.saveGState() //grafik durumu kaydetme
        
        drawContext.setStrokeColor(UIColor.lightGray.cgColor)
        drawContext.setAlpha(0.5)
        
        drawContext.move(to: originalPoint) // çizgi başlangıç
        drawContext.addLine(to: CGPoint(x: currentPageRect.width - originalPoint.x * 2,
                                        y: originalPoint.y)) //çizgi bitiş
        drawContext.strokePath() // uygula
        drawContext.restoreGState() // Çizim işlemi tamamlandıktan sonra restoreGState ile önceki duruma geri dönülür.
    }
}
