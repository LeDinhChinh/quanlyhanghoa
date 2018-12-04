//
//  ViewController.swift
//  Quản Lý Hàng Hoá
//
//  Created by Admin on 12/3/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ListGoods: UIViewController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ListGoods: UIImagePickerControllerDelegate {
    @IBAction func nextViewAddNewGoods(_ sender: Any) {
        let selectedImage = UIImagePickerController()
        selectedImage.sourceType = .photoLibrary
        selectedImage.delegate = self
        present(selectedImage, animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            fatalError("Khong the truy cap vao library")
        }
        let sb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "addNewGoods") as? AddNewGoods
        self.navigationController?.pushViewController(sb!, animated: true)
        dismiss(animated: true, completion: nil)
    }
}
//@IBAction func selectedImageFromPhotoLibrary(_ sender: UIGestureRecognizer) {
//    textFieldName.resignFirstResponder()
//    let selectedImage = UIImagePickerController()
//    selectedImage.sourceType = .photoLibrary
//    selectedImage.delegate = self
//    present(selectedImage, animated: true)
//}
//guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
//    fatalError("khong the truy cap vao photo library")
//}
//selecterImage.image = selectedImage
//dismiss(animated: true, completion: nil)
