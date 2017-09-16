//
//  LanguageTableViewCell.swift
//  WLCApp
//
//  Created by Remi Tobias on 16/09/2017.
//  Copyright © 2017 WLC. All rights reserved.
//

import UIKit

class LanguageTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet weak var backgroundColour: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
