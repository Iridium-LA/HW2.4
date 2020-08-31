//
//  BioViewController.swift
//  HW2.4
//
//  Created by Игорь Зигура on 31.08.2020.
//  Copyright © 2020 Zigura. All rights reserved.
//

import UIKit

class BioViewController: UIViewController {

    var whatToShow = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutVC = segue.destination as? AboutScreenViewController else {return}
        aboutVC.whatToShow = whatToShow
    }
    
    @IBAction func buttonPush(with button: UIButton) {
        switch button.tag {
        case 1: whatToShow = "About"
        case 2: whatToShow = "Study"
        case 3: whatToShow = "Career"
        case 4: whatToShow = "Hobby"
        default: return
        }
        performSegue(withIdentifier: "showAboutScreen", sender: nil)
    }

    
}
