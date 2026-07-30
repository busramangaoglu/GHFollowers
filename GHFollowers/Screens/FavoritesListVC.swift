//
//  FavoritesList.swift
//  GHFollowers
//
//  Created by Büşra Mangaoğlu on 20.07.2026.
//

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break 
                
            }
            
        }

        
    }
    
}
