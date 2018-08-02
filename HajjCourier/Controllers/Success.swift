//
//  Success.swift
//  HajjCourier
//
//  Created by Wissa Azmy on 8/2/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class Success: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(MoveOn), userInfo: nil, repeats: false)
        
    }
    
    @objc private func MoveOn() {
        self.performSegue(withIdentifier: "BackToCampaigns", sender: self)
    }

}
