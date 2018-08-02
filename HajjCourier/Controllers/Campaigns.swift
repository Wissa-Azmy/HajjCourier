//
//  Campaigns.swift
//  HajjCourier
//
//  Created by Wissa Azmy on 8/2/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class Campaigns: UIViewController {
    
    var campaignsArray = DataService.instance.campaigns {
        didSet {
            if campaignsTable != nil {
                campaignsTable.reloadData()
            }
        }
    }

    @IBOutlet weak var campaignsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        DataService.instance.campaigns = [
            Campaign(id: "1523DE", from: "Cairo", to: "Jedah", date: "12/5/2012"),
            Campaign(id: "1347FE", from: "Alex", to: "Makka", date: "6/7/2019")
        ]
        campaignsTable.tableFooterView = UIView()
        campaignsTable.dataSource = self
        campaignsTable.delegate = self
        campaignsTable.reloadData()
    }


}

extension Campaigns: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return campaignsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = campaignsTable.dequeueReusableCell(withIdentifier: "CampaignCell", for: indexPath) as! CampaignCell
        cell.initCell(title: campaignsArray[indexPath.row].id, from: campaignsArray[indexPath.row].from, to: campaignsArray[indexPath.row].to, date: campaignsArray[indexPath.row].date)
        return cell
    }
}

extension Campaigns: UITableViewDelegate {
    
}
