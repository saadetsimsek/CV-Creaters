//
//  MainView.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 19/11/2024.
//

import UIKit

final class MainView: UIView {
    
    private let nameView = InfoView("Name")
    private let emailView = InfoView("Email")
    private let phoneView = InfoView("Phone")
    private let photoImageView = InfoImageView(frame: .zero)
    private let experienceSegmentedConstrol = UISegmentedControl()
    private let previewButton = UIButton(type: .system)
    private let shareButton = UIButton(type: .system)

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
