//
//  PDFCretaeData.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 20/12/2024.
//

import PDFKit

extension PDFCreater {
    func pdfCreatedData() -> Data {
        let pdfMetaData: [String: Any] = [
            kCGPDFContextCreator as String: "Sade PDF",
            kCGPDFContextAuthor as String: "Saadet Şimşek"
        ]
        
        //PDF formatını oluşturuyoruz
        let format = UIGraphicsPDFRendererFormat()
        format.documentInfo = pdfMetaData as [String: Any]
        
        let pageWidth = 8.5 * 72
        let pageHeight = 11.0 * 72
        let pageRect = CGRect(x: 0,
                              y: 0,
                              width: pageWidth,
                              height: pageHeight)
        
        currentPageRect = pageRect
        
        //pdf rendere oluşturma
        let renderer = UIGraphicsPDFRenderer(bounds: pageRect, format: format)
        //pdf veri üretme
        let data = renderer.pdfData{ context in
            context.beginPage()
            pdfCreateCV(context: context.cgContext)
        }
        return data
    }
}
