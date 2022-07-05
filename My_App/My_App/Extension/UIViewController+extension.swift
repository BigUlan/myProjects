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
    
extension UIView {

   /// Радиус гараницы
    @IBInspectable var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set { layer.cornerRadius = newValue  }

    }
    /// Толщина границы
    @IBInspectable var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    /// Смещение тени
    @IBInspectable var shadowOffset: CGSize {
        get { return layer.shadowOffset }
        set { layer.shadowOffset = newValue  }
    }
    /// Прозрачность тени
    @IBInspectable var shadowOpacity: Float {
        set { layer.shadowOpacity = newValue }
        get { return layer.shadowOpacity }
    }
    /// Радиус блура тени
    @IBInspectable var shadowRadius: CGFloat {
        set {  layer.shadowRadius = newValue }
        get { return layer.shadowRadius }
    }
    /// Отсекание по границе
    @IBInspectable var _clipsToBounds: Bool {
        get { return clipsToBounds }
        set { clipsToBounds = newValue }
    }
}
    
