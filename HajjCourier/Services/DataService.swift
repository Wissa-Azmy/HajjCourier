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
}
