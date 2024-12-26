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
        
        guard let UserExperience = Resources.WorkExperience(rawValue: experience),
              let skills = Resources.Skills(rawValue: experience) else{
            return
        }
        
        //add image
        let photoOriginalPoint = CGPoint(x: 10, y: 10)
        let imageRect = addImage(originalPoint: photoOriginalPoint,
                                 image: image,
                                 size: currentPageRect.width * 0.2)
        
        let titlePoint = pdfCreateTitle(originalPoint: CGPoint(x: imageRect.maxX + 10,
                                              y: imageRect.minY + 5))
        pdfCreatePersonalInfo(originalPoint: CGPoint(x: titlePoint.x, y: titlePoint.y + 10))
        
        //add summary
        let summaryPoint = pdfCreateInfo(originalPoint: CGPoint(x: imageRect.minX,
                                                                y: imageRect.maxY + 20),
                                         context: context,
                                         title: Resources.CVTitles.summary.rawValue,
                                         description: Resources.Summary.first.rawValue)
        
        //add work experience
        let workExperiencePoint = pdfCreateInfo(originalPoint: CGPoint(x: imageRect.minX,
                                                                       y: summaryPoint.maxY + 20),
                                                context: context,
                                                title: Resources.CVTitles.workExperience.rawValue,
                                                description: UserExperience.description)
        
        //add skills
        let skillPoint = pdfCreateInfo(originalPoint: CGPoint(x: imageRect.minX,
                                                              y: workExperiencePoint.maxY + 20),
                                       context: context,
                                       title: Resources.CVTitles.skills.rawValue,
                                       description: skills.description)
        
        // add education
        _ = pdfCreateInfo(originalPoint: CGPoint(x: imageRect.minX,
                                                 y: skillPoint.maxY + 20),
                          context: context,
                          title: Resources.CVTitles.education.rawValue,
                          description: Resources.Education.university.rawValue)
    }
}
