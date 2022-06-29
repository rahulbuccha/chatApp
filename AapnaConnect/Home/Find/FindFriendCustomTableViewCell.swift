//
//  FindFriendCustomTableViewCell.swift
//  AapnaConnect
//
//  Created by Admin on 28/06/22.
//

import UIKit

class FindFriendCustomTableViewCell: UITableViewCell {
    
    //listFriend Outlets
    @IBOutlet weak var findFreindView: UIView!
    @IBOutlet weak var userImg: UIImageView!
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
