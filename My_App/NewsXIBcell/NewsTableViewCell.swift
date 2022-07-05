//
//  NewsTableViewCell.swift
//  My_App
//
//  Created by Ulan Beishenkulov on 1/7/22.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsViewsCount: UILabel!
    @IBOutlet weak var newsLike: UIView!
    @IBOutlet weak var newsComment: UIView!
    @IBOutlet weak var newsShare: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        newsLike.layer.cornerRadius = newsLike.bounds.width / 5
        newsComment.layer.cornerRadius = newsComment.bounds.width / 5
        newsShare.layer.cornerRadius = newsShare.bounds.width / 5
    }
}
