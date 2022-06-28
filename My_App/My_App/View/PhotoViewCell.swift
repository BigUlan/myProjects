//
//  PhotoViewCell.swift
//  My_App
//
//  Created by Ulan Beishenkulov on 25/6/22.
//

import UIKit

class PhotoViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photoImage: UIImageView!
    
    @IBOutlet var likeCounter: UILabel!
    var count = 0
    @IBOutlet var likeControl: LikeControl!
    @IBOutlet var container: UIView!
    
    override func awakeFromNib() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tap.numberOfTapsRequired = 2
        container.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(_: UITapGestureRecognizer) {
        likeControl.isLike.toggle()
        
        if likeControl.isLike {
            likeControl.likePicture.image = UIImage(systemName: "suit.heart.fill")
            count = count + 1
            likeCounter.text = "\(count)"
        } else {
            likeControl.likePicture.image = nil
            count = count - 1
            likeCounter.text = "\(count)"
        }

    }
    	
    
}
