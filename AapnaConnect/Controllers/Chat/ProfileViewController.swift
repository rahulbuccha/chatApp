//
//  ProfileViewController.swift
//  AapnaConnect
//
//  Created by Admin on 27/06/22.
//

import UIKit

class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var photoImageView: UIImageView!
    var pickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerController.delegate = self
        // Do any additional setup after loading the view.
    }
        
    // Image view Style func
     func layoutSubviews() {
        photoImageView.layer.cornerRadius = photoImageView.bounds.height / 2
        photoImageView.clipsToBounds = true
    }
    
    // Picking image func
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[.originalImage] as? UIImage{
            photoImageView.image = selectedImage
            layoutSubviews()
        }
        picker.dismiss(animated: true)
        
    }
    //Accesss to folder/ photo gallery
    @IBAction func folderButton(_ sender: Any) {
        pickerController.sourceType = .photoLibrary
        present(pickerController, animated: true, completion: nil)
    }

}
