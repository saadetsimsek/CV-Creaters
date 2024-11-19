//
//  InfoImageView.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 19/11/2024.
//

import UIKit

final class InfoImageView: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .purple
        image = UIImage(systemName: "")
        tintColor = .white
        contentMode = .center
        layer.cornerRadius = 10
        clipsToBounds = true
    }
    
}
