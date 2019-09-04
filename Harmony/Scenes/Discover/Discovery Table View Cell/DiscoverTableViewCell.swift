//
//  DiscoverTableViewCell.swift
//  Harmony
//
//  Created by Mohamed Elbassiouny on 8/29/19.
//  Copyright © 2019 Mohamed Elbassiouny. All rights reserved.
//

import UIKit

class DiscoverTableViewCell: UITableViewCell {
    @IBOutlet weak var discoverImage: UIImageView!
    @IBOutlet weak var discoverAddressLabel: UILabel!
    @IBOutlet weak var discoverRateLabel: UILabel!
    @IBOutlet weak var discoverDistanceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
