//
//  View2ControllerViewController.swift
//  MobileDasturlash
//
//  Created by ustadev.uz on 15/04/24.
//

import UIKit

class View2ControllerViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
         let passedData = UserDefaults.standard.string(forKey: "login")
            
        print(passedData ?? "salom")
    }
}
