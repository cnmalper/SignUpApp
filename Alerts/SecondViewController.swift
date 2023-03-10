//
//  SecondViewController.swift
//  Alerts
//
//  Created by Alper Canımoğlu on 20.10.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var username2Label: UILabel!
    @IBOutlet weak var symbol: UIImageView!
    
    
    var myUserName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        username2Label.text = myUserName
    }

}
