//
//  CustomCellTableViewCell.swift
//  AapnaConnect
//
//  Created by Admin on 28/06/22.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {

    // All the Outlets from the table view cell
    @IBOutlet weak var friendView: UIView!
    @IBOutlet weak var avatarImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
