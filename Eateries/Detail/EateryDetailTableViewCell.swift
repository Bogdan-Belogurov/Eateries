//
//  EateryDetailTableViewCell.swift
//  Eateries
//
//  Created by Bogdan Belogurov on 17.10.2017.
//  Copyright © 2017 Bogdan Belogurov. All rights reserved.
//

import UIKit

class EateryDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var keyLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
