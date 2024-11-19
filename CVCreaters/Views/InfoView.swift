//
//  InfoView.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 19/11/2024.
//

import UIKit

class InfoView: UIView {

    private let titleLabel = UILabel(text: "")
    private let infoTextField = InfoTextField()
    private let lineView = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureTitleLabel()
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(_ title: String){ //yardımcı başlatıcı
        self.init()
        titleLabel.text = title
    }
    
    private func configureTitleLabel(){
        addSubview(titleLabel)
        addSubview(infoTextField)
        addSubview(lineView)
        
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.backgroundColor = .lightGray
        lineView.alpha = 0.2
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            titleLabel.heightAnchor.constraint(equalToConstant: 14),
            
            infoTextField.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 0),
            infoTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            infoTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            infoTextField.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            lineView.bottomAnchor.constraint(equalTo: bottomAnchor),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            lineView.heightAnchor.constraint(equalToConstant: 2)
            
        ])
    }

}