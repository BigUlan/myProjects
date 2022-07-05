//
//  CollectionViewCell.swift
//  My_App
//
//  Created by Ulan Beishenkulov on 4/7/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsViewedCount: UILabel!
    @IBOutlet weak var newsLike: UIView!
    @IBOutlet weak var newsShare: UIView!
    @IBOutlet weak var newsComment: UIView!
    @IBOutlet weak var newsTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
