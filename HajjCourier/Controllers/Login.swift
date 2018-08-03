//
//  Login.swift
//  HajjCourier
//
//  Created by Wissa Azmy on 8/3/18.
//  Copyright © 2018 Wissa Azmy. All rights reserved.
//

import UIKit

class Login: UIViewController {
    
    @IBOutlet weak var errorLbl: UILabel!
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.errorLbl.alpha = 0
    }
    
    @IBAction func login(_ sender: UIButton) {
        let username = usernameTxt.text
        let password = passwordTxt.text
        
        if username == "wissa", username != "", password == "password", password != "" {
            performSegue(withIdentifier: "ToSupervisor", sender: nil)
        } else if username == "azmy", username != "", password == "password", password != "" {
            performSegue(withIdentifier: "ToAdmin", sender: nil)
        } else {
            showError()
        }
    }
    
    private func showError() {
        UIView.animate(withDuration: 0.3) {
            self.errorLbl.alpha = 1
        }
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(hideError), userInfo: nil, repeats: false)
    }
    
    @objc private func hideError() {
        UIView.animate(withDuration: 0.3) {
            self.errorLbl.alpha = 0
        }
    }
    
}
