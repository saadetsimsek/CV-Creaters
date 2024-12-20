//
//  PDFPreviewViewController.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 20/12/2024.
//

import UIKit
import PDFKit

class PDFPreviewViewController: UIViewController {
    
    var documentData: Data?
    private let pdfView = PDFView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        view.addSubview(pdfView)
        pdfView.frame = view.frame
        
        if let documentData {
            pdfView.document = PDFDocument(data: documentData)
            pdfView.autoScales = true // pdf in cihaz ekranına göre boyutlandırılması
        }
        
    }
 

}
