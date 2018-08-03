//
//  Pilgrims.swift
//  HajjCourier
//
//  Created by Wissa Azmy on 8/3/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class Pilgrims: UIViewController {
    
    var pilgrimsArray = DataService.instance.pilgrims
    
    @IBOutlet weak var pilgrimsTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pilgrimsTable.dataSource = self
        pilgrimsTable.delegate = self
        pilgrimsTable.tableFooterView = UIView()
        navigationItem.title = "PILGRIMS LIST"
        navigationItem.backBarButtonItem?.title = ""
    }
    
}


extension Pilgrims: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = pilgrimsTable.dequeueReusableCell(withIdentifier: "PilgrimCell", for: indexPath)
 
        return cell
    }
}

extension Pilgrims: UITableViewDelegate {
    @available(iOS 11.0, *)
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let scan = UIContextualAction(style: .normal, title: "Edit") { (action, view, nil) in
            
//            guard let campaignScansVC = self.storyboard?.instantiateViewController(withIdentifier: "CampaignScansVC") as? CampaignScans else { return }
////            campaignScansVC.initData(title: self.pilgrimsArray[indexPath.row].id)
//            self.navigationController?.pushViewController(campaignScansVC, animated: true)
        }
        scan.backgroundColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        scan.image = #imageLiteral(resourceName: "edit list")
        
        return UISwipeActionsConfiguration(actions: [scan])
    }
}
