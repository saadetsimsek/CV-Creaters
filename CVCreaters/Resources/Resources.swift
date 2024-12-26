//
//  Resources.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 26/12/2024.
//

import Foundation

enum Resources {
    
    enum CVTitles: String {
        case summary = "Summary"
        case workExperience = "Work Experience"
        case skills = "Skills"
        case education = "Education"
    }
    
    enum Summary: String {
        case first = """
        I'm a passionate IOS Developer with a love for creating interactive and dynamic user experiences. Passionate junior developer with a love for learning and a knock for problem solving. Over the two years of experience developing mobike apps in Swift. Skilled in using Apple's Xcode development environment and Cocoa Touch framework.
        """
    }
    
    enum WorkExperience: Int {
        case oneYear = 0, twoYear, threeYear
        
        var description: String {
            switch self {
            case .oneYear:
                return """
                Horns and hoove, Junior IOS Developer
                May '22 October
                *Colloborated witd designers to implement new features in existing app as wel as create new ones from stracth using Swift Programming language
                *Participated in daily stand-up meetings, biweekly sprint planning meetings, and monthly status update meetings where progress is reviewed among team members and feedback provided on performance if necessary.
                """
            case .twoYear:
                return """
                Horns and hooves, Junior ioS Developer May '21 - Current
                • Developed and maintained iOS applications for the company's clients.
                • Collaborated with designers to implement new features in existing apps as well as create new ones from scratch using
                Swift programming language.
                • Participated in daily stand-up meetings, biweekly sprint planning meetings, and monthly status update meetings.
                """
            case .threeYear:
                return """
                Horns and hooves, Junior ioS Developer          May '20 - May '22
                • Collaborated with designers to implement new features in existing apps as well as create new ones from scratch using Swift programming language.
                • Participated in daily stand-up meetings, biweekly sprint planning meetings, and monthly status update meetings.     May '22 - Current
                Galley, Junior iS Developer
                • Created and maintained the ioS version of a popular fitness tracking app for iPhone users
                • Collaborated with other developers on bug fixes and new features for existing apps
                • Improved user experience by implementing UI updates based on feedback from customers
                """
                    
            }
        }
    }
    
    enum Skills: Int {
        case oneYear = 0, twoYear, threeYear
        
        var description: String {
            switch self {
            case .oneYear:
                return """
            XCode,
            UIKit,
            Playground, xib,
            URLSession, Alamofire,
            UserDefaults, keyChain,
            MVC, MVP,
            OOP, DRY
            GCD
            """
            case .twoYear:
                return """
            XCode,
            UIKit,
            Playground, xib, AutoLayout,
            URLSession, Alamofire,
            UserDefaults, keyChain, Realm
            MVC, MVP, MVVM
            OOP, DRY, SOLID, KISS
            GCD, Operation            
            """
            case .threeYear:
                return """
            XCode,
            UIKit, SwiftUI
            Playground, xib, AutoLayout, SnapKit
            URLSession, Alamofire,
            UserDefaults, keyChain, Realm, CoreData
            MVC, MVP, MVVM, VIPER 
            OOP, DRY, SOLID, KISS, Design Pattern
            GCD, Operation, thread          
            """
            }
        }
    }
    
    enum Education: String {
        case university = "Saint-Petersburg National research university of Information Technology"
    }
}

