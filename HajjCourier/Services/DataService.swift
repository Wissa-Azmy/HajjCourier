//
//  DataService.swift
//  HajjCourier
//
//  Created by Wissa Azmy on 8/2/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()

    var campaigns = [Campaign]() {
        didSet {
            let vc = Campaigns()
            vc.campaignsArray = campaigns
        }
    }
    
    let scans = [
        "EG125530363518JA13KA79A54", "EG125530363518JA13KA79A55",
        "EG125530363518JA13KA79A56", "EG125530363518JA13KA79A57"
    ]
}
