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
        campaignsTable.tableFooterView = UIView()
        campaignsTable.dataSource = self
        campaignsTable.delegate = self
        campaignsTable.reloadData()
    }

//    func create() {
//        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
//        let campaign = Campaign(context: managedContext)
//
//        campaign.id = "id"
//        campaign.date = "date"
//    }

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
    @available(iOS 11.0, *)
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let scan = UIContextualAction(style: .normal, title: "Scan") { (action, view, nil) in

            guard let campaignScansVC = self.storyboard?.instantiateViewController(withIdentifier: "CampaignScansVC") as? CampaignScans else { return }
            campaignScansVC.initData(title: self.campaignsArray[indexPath.row].id)
            self.navigationController?.pushViewController(campaignScansVC, animated: true)
        }
        scan.backgroundColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        scan.image = #imageLiteral(resourceName: "scan-list")
        
        return UISwipeActionsConfiguration(actions: [scan])
    }
}
