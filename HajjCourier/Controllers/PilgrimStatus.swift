//
//  PilgrimStatus.swift
//  HajjCourier
//
//  Created by Wissa Azmy on 8/3/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class PilgrimStatus: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(MoveOn), userInfo: nil, repeats: false)
        
    }
    
    @objc private func MoveOn() {
        self.performSegue(withIdentifier: "ToPilgrims", sender: nil)
    }

}
