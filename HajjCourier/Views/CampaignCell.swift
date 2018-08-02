//
//  CampaignCell.swift
//  HajjCourier
//
//  Created by Wissa Azmy on 8/2/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class CampaignCell: UITableViewCell {
    
    @IBOutlet weak var campainTitleLbl: UILabel!
    @IBOutlet weak var fromLbl: UILabel!
    @IBOutlet weak var toLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initCell(title: String, from: String, to: String, date: String) {
        campainTitleLbl.text = title
        fromLbl.text = from
        toLbl.text = to
        dateLbl.text = date
    }

}
