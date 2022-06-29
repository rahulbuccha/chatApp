//
//  EditProfileTableViewCell.swift
//  AapnaConnect
//
//  Created by Admin on 28/06/22.
//

import UIKit

class EditProfileTableViewCell: UITableViewCell {

    //Outlets
    @IBOutlet weak var editImageView: UIImageView!
    @IBOutlet weak var editView: UIView!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var emailLbl: UITextField!
    @IBOutlet weak var phoneLbl: UILabel!
    
    @IBOutlet weak var userTxtField: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var phoneTxtField: UITextField!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // to make imageView round but it didn't work
        editImageView.layer.masksToBounds = true
        editImageView.layer.cornerRadius = editImageView.frame.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
