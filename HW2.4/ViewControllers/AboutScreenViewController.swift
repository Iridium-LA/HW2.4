//
//  AboutScreenViewController.swift
//  HW2.4
//
//  Created by Игорь Зигура on 31.08.2020.
//  Copyright © 2020 Zigura. All rights reserved.
//

import UIKit

class AboutScreenViewController: UIViewController {

 
    @IBOutlet weak var informationLabel: UILabel!
    
    var whatToShow = ""
        
    override func viewDidLoad() {
        switch whatToShow {
        case "About": informationLabel.text = firstUser.getAbout()
        case "Study": informationLabel.text = firstUser.getStudy()
        case "Career": informationLabel.text = firstUser.getCareer()
        case "Hobby": informationLabel.text = firstUser.getHobby()
        default: informationLabel.text = "Что-то пошло не так"
        }
        super.viewDidLoad()

    }

    @IBAction func closeButtonPush() {
        dismiss(animated: true)
    }
}
