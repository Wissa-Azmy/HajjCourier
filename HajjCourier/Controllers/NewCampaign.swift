//
//  NewCampaign.swift
//  HajjCourier
//
//  Created by Wissa Azmy on 8/2/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class NewCampaign: UIViewController {
    
    @IBOutlet weak var leavingFromTxt: UITextField!
    @IBOutlet weak var toTxt: UITextField!
    @IBOutlet weak var departureTxt: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveFlightDetails(_ sender: UIButton) {
        let campaignId = Int.random(in: 1..<100)
        let from = leavingFromTxt.text
        let to = toTxt.text
        let date = departureTxt.text
        
        let campaign = Campaign(id: String(campaignId), from: from!, to: to!, date: date!)
        DataService.instance.campaigns.append(campaign)
    }
}
