//
//  PilgrimCell.swift
//  HajjCourier
//
//  Created by Wissa Azmy on 8/3/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class PilgrimCell: UITableViewCell {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var campaignLbl: UILabel!
    @IBOutlet weak var rfidLbl: UILabel!
    @IBOutlet weak var idNumberLbl: UILabel!
    @IBOutlet weak var expLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
