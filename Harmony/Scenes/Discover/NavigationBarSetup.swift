//
//  NavigationBarSetup.swift
//  Harmony
//
//  Created by Mohamed Elbassiouny on 9/4/19.
//  Copyright © 2019 Mohamed Elbassiouny. All rights reserved.
//

import UIKit
class NavigationBarSetup: NSObject {
    
    let blackView =  UIView()
    let filterCollectionView : UICollectionView = {
        let layout = UICollectionViewLayout()
        let CollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        CollectionView.backgroundColor = UIColor.white 
        return CollectionView
    }()
    
    @objc func displayFilterMenu(){
        if let window = UIApplication.shared.keyWindow{
            let blackView =  UIView()
            blackView.backgroundColor = UIColor(white: 0, alpha: 0.7)
            
            blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(DismissFilterView)))
            
            window.addSubview(blackView)
            window.addSubview(filterCollectionView)
            filterCollectionView.frame = CGRect(x: 0, y: 0, width: window.frame.width, height: 300)
            blackView.frame = window.frame
            
            UIView.animate(withDuration: 0.5, animations:{
                blackView.alpha = 1
            })
        }
    }
    
    @objc func DismissFilterView(){
        UIView.animate(withDuration: 0.5){
            self.blackView.alpha = 0
        }
    }
    
    override init() {
        super.init()
    }
}
