//
//  ViewController.swift
//  MobileDasturlash
//
//  Created by ustadev.uz on 05/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var loginInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButton(_ sender: UIButton) {
        
        guard let login = loginInput.text, !login.isEmpty else { return }
        guard let password = passwordInput.text, !password.isEmpty else { return }
        
        resultLabel.text = "Login: \(login) Password: \(password)"
        
        UserDefaults.standard.set(login, forKey: "login")
        
        let secondViewController = View2ControllerViewController()
        self.present(secondViewController, animated: true)
    }
    
}

