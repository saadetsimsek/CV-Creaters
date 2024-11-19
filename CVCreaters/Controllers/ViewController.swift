//
//  ViewController.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 19/11/2024.
//

import UIKit

 class ViewController: UIViewController {
    
    private var mainView: MainView? {
        view as? MainView
    }
    
    override func loadView() {
        self.view = MainView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CV"
    }


}

