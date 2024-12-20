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
        self.view = MainView(delegate: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CV"
        
        mainView?.delegate = self
        
        
    }
     
     private func checkInfoField() -> Bool {
         
         var result = true
         
         for type in ViewType.allCases{
             if mainView?.getInfoText(type) == ""{
                 //error shake view
                 mainView?.setIsFailed(type, true)
                 result = false
             }
             else {
                 mainView?.setIsFailed(type, false)
             }
         }
         return result
     }

}

//MARK: - MainView Delegate

extension ViewController: MainViewDelegate {
    func shareButtonTapped() {
        print("share button tap")
       // mainView?.shake()
    }
    
    func previewButtonTapped() {
        checkInfoField()
    }
}

//MARK: - InfoImageView Protocol

extension ViewController: InfoImageViewProtocol{
    func didTap() {
        showPhotoAlert {[weak self] source in
            guard let self = self else {return}
            self.chooseImagePicker(source)
        }
    }
    
}

//MARK: - UIImagePickerControllerDelegate
extension ViewController: UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.originalImage] else { return}
        // set image for UIImageView
        mainView?.setImage(image as! UIImage)
        dismiss(animated: true)
    }
}

//MARK: - UINavigationControllerDelegate

extension ViewController: UINavigationControllerDelegate{
    func chooseImagePicker(_ source: UIImagePickerController.SourceType){
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = source
        imagePicker.delegate = self
        present(imagePicker, animated: true)
    }
}
