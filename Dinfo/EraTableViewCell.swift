//
//  EraTableViewCell.swift
//  Dinfo
//
//  Created by Delson Silveira on 4/21/16.
//  Copyright © 2016 Kongros Interactive. All rights reserved.
//

import UIKit

class EraTableViewCell: UITableViewCell {

    @IBOutlet weak var eraPeriodo: UILabel!
    @IBOutlet weak var eraBgImage: UIImageView!
    @IBOutlet weak var eraImage: UIImageView!
    @IBOutlet weak var era: UILabel!

    
    
    override func awakeFromNib() {

        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
