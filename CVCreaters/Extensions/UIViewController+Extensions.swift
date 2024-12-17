//
//  UIViewController+Extensions.swift
//  CVCreaters
//
//  Created by Saadet Şimşek on 22/11/2024.
//

import UIKit

extension UIViewController{
    
    func showPhotoAlert(completion: @escaping (UIImagePickerController.SourceType) -> Void) {
        let alertController = UIAlertController(title: "",
                                                message: "",
                                                preferredStyle: .actionSheet)
        let camera = UIAlertAction(title: "Camera",
                                   style: .default) { _ in
            let camera = UIImagePickerController.SourceType.camera
            completion(camera)
        }
        
        let photoLibrary = UIAlertAction(title: "Photo Library",
                                         style: .default) { _ in
            let photoLibrary = UIImagePickerController.SourceType.photoLibrary
            completion(photoLibrary)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alertController.addAction(camera)
        alertController.addAction(photoLibrary)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true)
    }
}
