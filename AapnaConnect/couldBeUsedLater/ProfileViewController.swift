//
//  ProfileViewController.swift
//  AapnaConnect
//
//  Created by Admin on 27/06/22.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    //@IBOutlet weak var photoImageView: UIImageView!
        //var pickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = imageView.frame.height / 2
        
       // pickerController.delegate = self
        // Do any additional setup after loading the view.
    }
        
//    // Image view Style func
//     func layoutSubviews() {
//        photoImageView.layer.cornerRadius = photoImageView.bounds.height / 2
//        photoImageView.clipsToBounds = true
//    }
    
    // Picking image func
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        if let selectedImage = info[.originalImage] as? UIImage{
//            photoImageView.image = selectedImage
//            layoutSubviews()
//        }
//        picker.dismiss(animated: true)
//
//    }
    
    //Accesss to folder/ photo gallery
//    @IBAction func folderButton(_ sender: Any) {
//        pickerController.sourceType = .photoLibrary
//        present(pickerController, animated: true, completion: nil)
//    }

}
//
//extension ProfileViewController : UITableViewDelegate, UITableViewDataSource{
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 710
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//
//}
