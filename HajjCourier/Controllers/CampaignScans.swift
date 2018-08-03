//
//  CampaignScans.swift
//  HajjCourier
//
//  Created by Wissa Azmy on 8/3/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class CampaignScans: UIViewController {
    
    var campaignTitle = ""
    var scansArray = DataService.instance.scans
    
    @IBOutlet weak var campaignTitleLbl: UILabel!
    @IBOutlet weak var BLETxt: UITextField!
    @IBOutlet weak var scansTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("\n\nCampaign Title: \(campaignTitle)")
        campaignTitleLbl.text = campaignTitle
        scansTable.dataSource = self
        scansTable.delegate = self
        
        scansTable.reloadData()
        scansTable.tableFooterView = UIView()
    }
    
    func initData(title: String) {
        campaignTitle = title
    }
}

extension CampaignScans: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scansArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = scansTable.dequeueReusableCell(withIdentifier: "scanCell", for: indexPath)
        cell.textLabel?.text = scansArray[indexPath.row]
        
        return cell
    }
}

extension CampaignScans: UITableViewDelegate {
    
}

extension CampaignScans: UITextFieldDelegate {
    
}
