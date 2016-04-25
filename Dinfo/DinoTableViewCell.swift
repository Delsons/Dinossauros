//
//  DinoTableViewCell.swift
//  Dinfo
//
//  Created by Delson Silveira on 4/22/16.
//  Copyright © 2016 Kongros Interactive. All rights reserved.
//

import UIKit

class DinoTableViewCell: UITableViewCell {

    @IBOutlet weak var dinoDescription: UILabel!
    @IBOutlet weak var dinoClass: UILabel!
    @IBOutlet weak var dinoTitle: UILabel!
    @IBOutlet weak var dinoImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
