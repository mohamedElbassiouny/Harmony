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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        discoverTableView.register(UINib(nibName: "DiscoveryTableViewCell", bundle: nil), forCellReuseIdentifier: "DiscoveryCell")
        discoverTableView.separatorColor = UIColor.clear
        
        // Do any additional setup after loading the view.
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
