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
        
        mainView?.delegate = self
    }

     @objc func shareButtonTap(){
         print("share button tapped")
     }
     
     @objc func previewButtonTap(){
         print("preview button tapped")
     }

}

extension ViewController: MainViewDelegate {
    func shareButtonTapped() {
        print("share button tap")
    }
    
    func previewButtonTapped() {
        print("preview button tap")
    }
    
    
}
