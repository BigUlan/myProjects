//
//  LikeControl.swift
//  My_App
//
//  Created by Ulan Beishenkulov on 28/6/22.
//

import UIKit

class LikeControl: UIControl {

    
    @IBOutlet var likePicture: UIImageView!
    var isLike: Bool = false
    
    override func awakeFromNib() {
        likePicture.backgroundColor = .clear
        likePicture.tintColor = .red
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
