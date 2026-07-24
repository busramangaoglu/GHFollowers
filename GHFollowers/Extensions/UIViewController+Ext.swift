//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Büşra Mangaoğlu on 21.07.2026.
//

import UIKit

fileprivate var containerView: UIView!

extension UIViewController {
    
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, ButtonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .flipHorizontal
            self.present(alertVC, animated: true)
            
        }
    }
    
    func showLoadingView() {
        containerView = UIView(frame: view.bounds)
        view.addSubview(containerView)
        
        containerView.backgroundColor = .systemBackground
        containerView.alpha = 0
        
        UIView.animate(withDuration: 0.25) { containerView.alpha = 0.8 }
        
        let activityIndıcator = UIActivityIndicatorView(style: .large)
        containerView.addSubview(activityIndıcator)
        
        activityIndıcator.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            activityIndıcator.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            activityIndıcator.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ])
    
        activityIndıcator.startAnimating()
    }
    
     func dismissLoadingView() {
            DispatchQueue.main.async {
                containerView.removeFromSuperview()
                containerView = nil
                
            
        }
    }
}
    

