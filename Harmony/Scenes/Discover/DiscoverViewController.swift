//
//  DiscoverViewController.swift
//  Harmony
//
//  Created by Mohamed Elbassiouny on 8/27/19.
//  Copyright © 2019 Mohamed Elbassiouny. All rights reserved.
//

import UIKit

class DiscoverViewController: UIViewController{
    @IBOutlet weak var discoverTableView: UITableView!
    
    let blackView =  UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        discoverTableView.register(UINib(nibName: "DiscoveryTableViewCell", bundle: nil), forCellReuseIdentifier: "DiscoveryCell")
        discoverTableView.separatorColor = UIColor.clear
        
        setupNavigetionButtons()
        
    }
    
    func setupNavigetionButtons() {
        let filterBarButton = UIBarButtonItem(image: UIImage(named: "filterIcon"), style: .plain, target: self, action: #selector(displayFilterMenu))
        navigationItem.rightBarButtonItem = filterBarButton
    }
    
    @objc func displayFilterMenu(){
        if let window = UIApplication.shared.keyWindow{
            let blackView =  UIView()
            blackView.backgroundColor = UIColor(white: 0, alpha: 0.7)
            
            blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(DismissFilterView)))
            
            window.addSubview(blackView)
            blackView.frame = view.frame
            
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
}

extension DiscoverViewController:UITableViewDelegate{}
extension DiscoverViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DiscoveryCell") as! DiscoveryTableViewCell
        return cell
    }
}
