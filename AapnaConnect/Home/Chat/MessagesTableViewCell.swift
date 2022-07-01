//
//  ChatTableViewCell.swift
//  AapnaConnect
//
//  Created by Admin on 29/06/22.
//

import UIKit

class MessagesTableViewCell: UITableViewCell {
    @IBOutlet weak var txtLbl: UILabel!
    @IBOutlet weak var uiViewBubble: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
        //uiViewBubble.backgroundColor = .green
        uiViewBubble.layer.cornerRadius = 10
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
