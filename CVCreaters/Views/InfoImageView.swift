//
//  InfoImageView.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 19/11/2024.
//

import UIKit

protocol InfoImageViewProtocol: AnyObject {
    func didTap()
}

final class InfoImageView: UIImageView {
    
    weak var delegate: InfoImageViewProtocol?

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        addTap()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .purple
        image = UIImage(systemName: "photo.badge.plus")
        tintColor = .white
        contentMode = .center
        layer.cornerRadius = 10
        clipsToBounds = true
    }
    
    private func addTap(){
        let imageViewTap = UITapGestureRecognizer(target: self,
                                                  action: #selector(handlerTap))
        isUserInteractionEnabled = true
        addGestureRecognizer(imageViewTap)
    }
    
    @objc private func handlerTap(){
        delegate?.didTap()
    }
    
}
