//
//  News.swift
//  My_App
//
//  Created by Ulan Beishenkulov on 1/7/22.
//

import UIKit

class News {
    
    let newsTitle: String
    let newsImage: UIImage?
    
    init(newsTitle: String, newsImage: UIImage? = nil) {
        self.newsTitle = newsTitle
        self.newsImage = newsImage
    }
}
