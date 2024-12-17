//
//  MainView.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 19/11/2024.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    func shareButtonTapped()
    func previewButtonTapped()
}

final class MainView: UIView {
    
    weak var delegate: MainViewDelegate?
    
    private let nameView = InfoView("Name", type: .name)
    private let emailView = InfoView("Email", type: .email)
    private let phoneView = InfoView("Phone", type: .phone)
    private let photoImageView = InfoImageView(frame: .zero)
    private var experienceSegmentedConstrol : UISegmentedControl = {
        var segmenttedController = UISegmentedControl()
        segmenttedController = UISegmentedControl(items: ["1 Year", "2 Year", "3 Year"])
        segmenttedController.selectedSegmentIndex = 0
        segmenttedController.translatesAutoresizingMaskIntoConstraints = false
        return segmenttedController
    }()
    
    private let previewButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .purple
        button.setTitle("Preview", for: .normal)
        button.tintColor = .systemBackground
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let shareButton: UIButton = {
        let shareButton = UIButton(type: .system)
        shareButton.translatesAutoresizingMaskIntoConstraints = false
        shareButton.backgroundColor = .systemBackground
        shareButton.setImage(UIImage(systemName: "square.and.arrow.up.circle"), for: .normal)
        shareButton.tintColor = .purple
        shareButton.layer.borderColor = UIColor.purple.cgColor
        shareButton.layer.borderWidth = 2
        shareButton.layer.cornerRadius = 10
        return shareButton
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemBackground
        setup()
        addConstraints()
    }
    
    convenience init(delegate: InfoImageViewProtocol?) {
        self.init()
        photoImageView.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setImage(_ image: UIImage){
        photoImageView.image = image
        photoImageView.contentMode = .scaleAspectFill
    }
    
    func getInfoText(_ viewType: ViewType) -> String{
        switch viewType {
        case .name:
            return nameView.getText()
        case .email:
            return emailView.getText()
        case .phone:
            return phoneView.getText()
        }
    }
    
    //MARK: - Setup UI
    
    private func setup(){
        addSubview(nameView)
        addSubview(photoImageView)
        addSubview(emailView)
        addSubview(phoneView)
        addSubview(experienceSegmentedConstrol)
        addSubview(shareButton)
        addSubview(previewButton)
        addTarget()
     
    }

    private func addTarget(){
        previewButton.addTarget(self, action: #selector(previewButtonTap), for: .touchUpInside)
        shareButton.addTarget(self, action: #selector(shareButtonTap), for: .touchUpInside)
    }
    
    @objc private func shareButtonTap(){
        delegate?.shareButtonTapped()
    }
    
    @objc private func previewButtonTap(){
        delegate?.previewButtonTapped()
        
    }
    
  
    

    private func addConstraints(){
        NSLayoutConstraint.activate([
            nameView.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            nameView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            nameView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.12),
            
            
            photoImageView.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 40),
            photoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            photoImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3),
            photoImageView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.35),
            
            
            emailView.topAnchor.constraint(equalTo: photoImageView.topAnchor),
            emailView.leadingAnchor.constraint(equalTo: photoImageView.trailingAnchor, constant: 20),
            emailView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            emailView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.12),
            
            
            phoneView.leadingAnchor.constraint(equalTo: photoImageView.trailingAnchor, constant: 20),
            phoneView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            phoneView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.12),
            phoneView.bottomAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 0),
            
            
            experienceSegmentedConstrol.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            experienceSegmentedConstrol.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            experienceSegmentedConstrol.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 20),
            
            
            shareButton.topAnchor.constraint(equalTo: experienceSegmentedConstrol.bottomAnchor, constant: 40),
            shareButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            shareButton.widthAnchor.constraint(equalToConstant: 40),
            shareButton.heightAnchor.constraint(equalToConstant: 40),
            
            
            previewButton.topAnchor.constraint(equalTo: experienceSegmentedConstrol.bottomAnchor, constant: 40),
            previewButton.trailingAnchor.constraint(equalTo: shareButton.trailingAnchor, constant: -50),
            previewButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            previewButton.heightAnchor.constraint(equalToConstant: 40),
            
        ])
    }
    
}
