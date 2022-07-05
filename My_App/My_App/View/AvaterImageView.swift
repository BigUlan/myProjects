//
//  AvaterImageView.swift
//  My_App
//
//  Created by Ulan Beishenkulov on 28/6/22.
//

import UIKit

class AvaterImageView: UIView {

    @IBOutlet var avatarView:UIImageView!
    @IBOutlet var shadowView:UIView!
    
    var shadowColor = UIColor.black
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        shadowView.layer.shadowColor = shadowColor.cgColor
        shadowView.layer.shadowOffset = .zero
        shadowView.layer.shadowRadius = 7
        shadowView.layer.shadowOpacity = 0.8
    }
    
    override func layoutSubviews() {
        avatarView.layer.cornerRadius = bounds.height / 2
        shadowView.layer.cornerRadius = bounds.height / 2
    }
    
}
