//
//  WelcomeScreenViewController.swift
//  HW2.4
//
//  Created by Игорь Зигура on 30.08.2020.
//  Copyright © 2020 Zigura. All rights reserved.
//

import UIKit

class WelcomeScreenViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var currentUser: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(currentUser.getUserName())"
    }
    
    @IBAction func logOutButtonPress() {
        dismiss(animated: true)
    }
    
}
