//
//  ViewController.swift
//  HajjCourier
//
//  Created by Wissa Azmy on 8/2/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        DataService.instance.campaigns = [
            Campaign(id: "1523DE", from: "Cairo", to: "Jedah", date: "12/5/2012"),
            Campaign(id: "1347FE", from: "Alex", to: "Makka", date: "6/7/2019")
        ]
    }

}

