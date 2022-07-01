//
//  EditProfileViewController.swift
//  AapnaConnect
//
//  Created by Admin on 28/06/22.
//

import UIKit

class EditProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        profileImageView.layer.masksToBounds = true
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped))
        
        profileImageView.addGestureRecognizer(tapGR)
        profileImageView.isUserInteractionEnabled = true
        
    }
    
    @objc func imageTapped(sender: UITapGestureRecognizer) {
                        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        
        let alert = UIAlertController(title: "Choose Image", message: nil, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Open Camera", style: .default, handler: {
            (action : UIAlertAction) in
            if UIImagePickerController.isSourceTypeAvailable(.camera){
                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true, completion: nil)
            }
            else{
                print("Camera Not Available")
            }
            
        }))
        
        alert.addAction(UIAlertAction(title: "Open Gallery", style: .default, handler: {
            (action : UIAlertAction) in
            imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true, completion: nil)
        }))

    
       

        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))


//                       self.present(alert, didShow: UIAlertAction, animated: true)
        self.present(alert, animated: true, completion: nil)

                    

    }
    
//     Picking image func
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[.editedImage] as? UIImage{
            profileImageView.image = selectedImage
        }
        
        picker.dismiss(animated: true, completion : nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
}

