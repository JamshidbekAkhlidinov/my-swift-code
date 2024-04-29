//
//  SignUpViewController.swift
//  FirebaseAuth
//
//  Created by ustadev.uz on 16/02/24.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickSignUp(_ sender: UIButton) {
        guard let email = emailField.text else {
            return
        }
        guard let password = passwordField.text else {
            return
        }
//        Auth.auth().createUser(withEmail: email, password: password) { result, error in
//            if let e = error {
//                print("error")
//            }else{
//                self.performSegue(withIdentifier: "goToNext", sender: self)
//            }
//        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
