//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Büşra Mangaoğlu on 21.07.2026.
//

import UIKit

extension UIViewController {
    
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, ButtonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .flipHorizontal
            self.present(alertVC, animated: true)
            
        }
        
    }
    
}
