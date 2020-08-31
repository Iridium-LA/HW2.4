//
//  ViewController.swift
//  HW2.4
//
//  Created by Игорь Зигура on 30.08.2020.
//  Copyright © 2020 Zigura. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextbox: UITextField!
    @IBOutlet weak var userPasswordTextbox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstUser.editAbout(with: myAbout)
        firstUser.editCareer(with: myCareer)
        firstUser.editStudy(with: myStudy)
        firstUser.editHobby(with: myHobby)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        userNameTextbox.text = ""
        userPasswordTextbox.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           self.view.endEditing(true)
    }
    
    private func showAttentionMessage(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let tabBarController = segue.destination as! UITabBarController
        let WelcomeScreenVC = tabBarController.viewControllers?.first as! WelcomeScreenViewController
        WelcomeScreenVC.currentUser = firstUser // shoud send real user, biensur
        
    }
            
    @IBAction func remindUserName() {
        showAttentionMessage(with: "Ooups!", and: "Your name is \(firstUser.getUserName())")
    }
    
    @IBAction func remindPassword() {
        showAttentionMessage(with: "Ooups!", and: "Your password is \(firstUser.getUserPassword())")
    }
    
    @IBAction func pushLogInButton() {
        guard let userName = userNameTextbox.text,
            let userPassword = userPasswordTextbox.text
            else {
                showAttentionMessage(with: "Ooups!", and: "Please enter username and password")
                return
        }
        if userName != firstUser.getUserName() && userPassword != firstUser.getUserPassword() {
            showAttentionMessage(with: "Ooups!", and: "Wrong username or password")
            userPasswordTextbox.text = ""
        } else {            
            performSegue(withIdentifier: "showWelcomeScreen", sender: nil)
        }
        
    }
    
}

