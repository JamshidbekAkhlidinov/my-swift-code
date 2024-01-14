//
//  View2Controller.swift
//  NavigationController
//
//  Created by ustadev.uz on 14/01/24.
//

import UIKit

class View2Controller: UIViewController {

    @IBOutlet weak var labelView2: UILabel!
    var message:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelView2.text = message
    }


}

