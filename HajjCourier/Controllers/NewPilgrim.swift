//
//  NewPilgrim.swift
//  HajjCourier
//
//  Created by Wissa Azmy on 8/3/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class NewPilgrim: UIViewController {
    
    @IBOutlet weak var firstnameTxt: UITextField!
    @IBOutlet weak var lastnameTxt: UITextField!
    @IBOutlet weak var campaignTxt: UITextField!
    @IBOutlet weak var passportIDTxt: UITextField!
    @IBOutlet weak var expDateTxt: UITextField!
    @IBOutlet weak var phoneTxt: UITextField!
    @IBOutlet weak var numberOfBagsTxt: UITextField!
    @IBOutlet weak var addressTxt: UITextField!
    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var countryTxt: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func savePilgrimDetails(_ sender: UIButton) {
//        let successVC = storyboard?.instantiateViewController(withIdentifier: "SuccessStatusVC")
        
    }

}
