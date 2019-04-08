//
//  ViewController.swift
//  Login
//
//  Created by Macbook on 4/3/19.
//  Copyright © 2019 Sauzun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var forgotUsr: UIButton!
    @IBOutlet weak var forgotPwd: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserName.textColor = UIColor.lightGray
        Password.textColor = UIColor.lightGray
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //segue.destination.navigationItem.title = UserName.text
        guard let sender = sender as? UIButton else {return}
        if sender == forgotUsr{
            segue.destination.navigationItem.title = "forgot username"
        }else if sender == forgotPwd{
            segue.destination.navigationItem.title = "forgot password"
        }else {
            segue.destination.navigationItem.title = UserName.text
        }
        
        
        
    }

    @IBAction func LogInAction(_ sender: Any) {
    }
    
    
    @IBAction func forgotUsrBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsrPwd", sender: forgotUsr)
    }
    
    
    @IBAction func forgotPwd(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsrPwd", sender: forgotPwd)
    }
    
    
    
    
}

