//
//  InfoTextField.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 19/11/2024.
//

import UIKit

final class InfoTextField: UITextField {
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        borderStyle = .none
        layer.cornerRadius = 10
        textColor = .black
        font = .systemFont(ofSize: 16)
        returnKeyType = .done
        translatesAutoresizingMaskIntoConstraints = false
    }
}
