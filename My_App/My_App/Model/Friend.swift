//
//  Friend.swift
//  My_App
//
//  Created by Ulan Beishenkulov on 24/6/22.
//

import UIKit

class Friend {
    
    let name: String
    let lastname: String
    let image: UIImage?
    
    init(name: String, lastname: String, image: UIImage? = nil) {
        self.name = name
        self.lastname = lastname
        self.image = image
    }
    
}
