//
//  FriendCustomCell.swift
//  ChatApp
//
//  Created by Raja on 13/06/18.
//  Copyright © 2018 Raja. All rights reserved.
//

import UIKit

class FriendCustomCell: UITableViewCell {

    @IBOutlet weak var messageLbl:UILabel!
    @IBOutlet weak var containerView:UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        containerView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
