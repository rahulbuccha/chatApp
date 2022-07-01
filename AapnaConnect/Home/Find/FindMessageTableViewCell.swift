//
//  FindMessageTableViewCell.swift
//  AapnaConnect
//
//  Created by Admin on 30/06/22.
//

import UIKit

class FindMessageTableViewCell: UITableViewCell {

    @IBOutlet weak var findUiView: UIView!
    @IBOutlet weak var txtLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        findUiView.layer.cornerRadius = 10
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
