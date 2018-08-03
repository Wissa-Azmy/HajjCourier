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
    
    var pilgrims: [Pilgrim] = [
        Pilgrim(firstname: "Shireef", lastname: "ElKhayat", campaign: "EG1234", RFID: "EG125530363518JA13KA79A54", idNumber: "A095847", exp: "12/5/2019"),
        Pilgrim(firstname: "Ahmed", lastname: "Btiha", campaign: "EG2234", RFID: "EG125530363518JA13KA79A55", idNumber: "A095848", exp: "13/5/2088"),
        Pilgrim(firstname: "Ahmed", lastname: "Dawood", campaign: "EG5363", RFID: "EG125530363518JA13KA79A56", idNumber: "A095849", exp: "13/5/2089")
    ]
}
