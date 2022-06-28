//
//  FriendTableViewCell.swift
//  My_App
//
//  Created by Ulan Beishenkulov on 22/6/22.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    @IBOutlet weak var friendAvatar: UIImageView!
    @IBOutlet weak var friendsName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        friendAvatar.layer.cornerRadius = friendAvatar.bounds.width / 2
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
