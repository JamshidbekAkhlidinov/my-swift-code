//
//  ViewController.swift
//  NavigationController
//
//  Created by ustadev.uz on 14/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sendMessageButton: UIButton!
    @IBOutlet weak var messageInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedSendMessageButton(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let vc = storyboard.instantiateViewController(withIdentifier: "second") as? View2Controller else {
            return
        }
        
        vc.message = messageInput.text
        navigationController?.pushViewController(vc, animated: true)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if  segue.destination is View2Controller {
//            let vc = segue.destination as? View2Controller
//            vc?.message = messageInput.text
//        }
//    }
    

}

