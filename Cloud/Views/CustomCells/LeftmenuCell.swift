//
//  LeftmenuCell.swift
//  Cloud
//
//  Created by nhatlee on 4/15/17.
//  Copyright © 2017 nhatlee. All rights reserved.
//

import UIKit

final class LeftMenuCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadData(_ menuObj: MenuObject){
//        iconImageView.image = UIImage(named: menuObj.icon)
        nameLabel.text = menuObj.name
    }

}
