//
//  UIViewController+extension.swift
//  My_App
//
//  Created by Ulan Beishenkulov on 02.06.2022.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showError(message: String) {
        let alertViewController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertViewController.addAction(okAction)
        
        present(alertViewController, animated: true, completion: nil)
    }
}
    
