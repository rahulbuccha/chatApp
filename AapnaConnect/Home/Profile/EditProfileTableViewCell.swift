//
//  EditProfileTableViewCell.swift
//  AapnaConnect
//
//  Created by Admin on 28/06/22.
//

import UIKit
import MobileCoreServices

class EditProfileTableViewCell: UITableViewCell, UIActionSheetDelegate,UIAlertViewDelegate {

    //Outlets
    
   
    @IBOutlet weak var findImageView: UIImageView!
    @IBOutlet weak var editView: UIView!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var emailLbl: UITextField!
    @IBOutlet weak var phoneLbl: UILabel!
    
    @IBOutlet weak var userTxtField: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var phoneTxtField: UITextField!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    var pickerController = UIImagePickerController()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        pickerController.delegate = self
        
        findImageView.layer.cornerRadius = findImageView.frame.height / 2
        findImageView.layer.masksToBounds = true
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped))
        
        findImageView.addGestureRecognizer(tapGR)
        findImageView.isUserInteractionEnabled = true
        
    }
    
            @objc func imageTapped(sender: UITapGestureRecognizer) {
//                    if sender.state == .ended {
//                        let alert = UIAlertController(title: "Choose Image", message: nil, preferredStyle: .actionSheet)
//
//                        alert.addAction(UIAlertAction(title: "Open Camera", style: .default, handler: {
//                            (action : UIAlertAction) in
//                        }))
//
//                        alert.addAction(UIAlertAction(title: "Open Gallery", style: .default, handler: {
//                            (action : UIAlertAction) in
//                        }))
//
//                        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//
//
//                        self.present(alert, didShow: UIAlertAction, animated: true)
//
//                           // print("UIImageView tapped")
//                    }
//   
            }
    
    // Picking image func
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[.originalImage] as? UIImage{
            findImageView.image = selectedImage
            layoutSubviews()
        }
        picker.dismiss(animated: true)
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

         
    }

}

extension EditProfileTableViewCell : UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    
}


