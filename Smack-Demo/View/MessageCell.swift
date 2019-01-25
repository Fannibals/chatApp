//
//  MessageCell.swift
//  Smack-Demo
//
//  Created by Ethan  on 25/1/19.
//  Copyright © 2019 Ethan . All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    
    // Outlets
    @IBOutlet weak var userImg: CircleImage!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var messageLbl: UILabel!
    @IBOutlet weak var timeStampLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(message: Message) {
        messageLbl.text = message.message
        userNameLbl.text = message.message
        userImg.image = UIImage(named: message.userAvatar)
        userImg.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
    }


}
