//
//  PDFAddText.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 23/12/2024.
//

import Foundation
import PDFKit

extension PDFCreater {
    func addText(originalPoint: CGPoint, text: String, type: UIFont.Weight, size: CGFloat, color: UIColor) -> CGRect {
        
        let textFont = UIFont.systemFont(ofSize: size, weight: type)
        //paragraf stili tanımlama
        let paragrafStyle = NSMutableParagraphStyle()
        paragrafStyle.alignment = .left
        paragrafStyle.lineBreakMode = .byWordWrapping // eğer sığmadıysa bir alt satıra geçsin -  metindeki işareti
        
        let textAttributes: [NSAttributedString.Key : Any] = [
            .paragraphStyle: paragrafStyle,
            .font: textFont,
            .foregroundColor: color
        ]
        
        let attributedText = NSAttributedString(string: text, attributes: textAttributes)
        
        //Metnin PDF sayfasında kaplayabileceği maksimum genişliği ayarlar.
        let textSize = attributedText.boundingRect(with: CGSizeMake(currentPageRect.width - originalPoint.x * 2, .zero), options: [.usesLineFragmentOrigin], context: nil)
        
        //metin dikdörtgeni
        let textRect = CGRect(x: originalPoint.x,
                              y: originalPoint.y,
                              width: textSize.width,
                              height: textSize.height)
        
        attributedText.draw(in: textRect)
        return textRect
    }
}
