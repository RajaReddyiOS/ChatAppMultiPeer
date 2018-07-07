//
//  MyCustomCell.swift
//  ChatApp
//
//  Created by Raja on 13/06/18.
//  Copyright © 2018 Raja. All rights reserved.
//

import UIKit

class MyCustomCell: UITableViewCell {
    
    @IBOutlet weak var messageLbl:UILabel!
    @IBOutlet weak var containerView:UIView!
    
    @IBOutlet weak var rightConstraint: NSLayoutConstraint!
    
    
    @IBOutlet weak var leftContraint: NSLayoutConstraint!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        containerView.layer.cornerRadius = 10
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    var message:Message? {
        didSet {
            
            guard let message = message else { return }
            
            if message.senderName == "Raja" {
                if let rightConstraint = rightConstraint, let leftContraint = leftContraint {
                    rightConstraint.isActive = false
                    leftContraint.isActive = true
                }
                containerView.backgroundColor = UIColor(red: 0, green: 132/255, blue: 255/255, alpha: 1)
                messageLbl.textColor = UIColor.white
            
            }else {
                if let rightConstraint = rightConstraint, let leftContraint = leftContraint {
                    rightConstraint.isActive = true
                    leftContraint.isActive = false
                }
                containerView.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
                messageLbl.textColor = UIColor.black
            }
        
            messageLbl.text = message.text
        
        }
    }
    
}
