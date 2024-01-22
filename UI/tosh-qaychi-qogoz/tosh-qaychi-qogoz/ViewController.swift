//
//  ViewController.swift
//  tosh-qaychi-qogoz
//
//  Created by ustadev.uz on 22/01/24.
//

import UIKit

enum GameButton:String {
    case rock = "Tosh"
    case scissor = "Qaychi"
    case paper = "Qog'oz"
}

class ViewController: UIViewController {

    
    @IBOutlet weak var rockButton: UIButton!
    
    @IBOutlet weak var sciessorButton: UIButton!
    
    @IBOutlet weak var paperButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var scoreProgram:Int = 0
    var scoreUser:Int = 0
    
    let gameButton: [GameButton] = [.paper,.rock,.scissor]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func check(_ name:GameButton){
        let programButton = gameButton.randomElement()!
        var message = ""
        if programButton == name {
            message = "Durrang";
        }else {
            if (
                (programButton == .paper && name == .rock) ||
                (programButton == .rock && name == .scissor) ||
               ( programButton == .scissor && name == .paper)
            ) {
                scoreProgram += 1
                message = "Yutqazdingiz. \(programButton.rawValue) edi"
            }else{
                scoreUser += 1
                message = "Siz g'olibsiz.  \(programButton.rawValue) edi"
            }
        }
             
        resultLabel.text = "Dastur: \(scoreProgram); Siz: \(scoreUser)";
        
        let alert = UIAlertController(title: "Result", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        present(alert,animated: true)
    }
    
    @IBAction func rockClick(_ sender: UIButton) {
        check(GameButton.rock)
    }
    

    @IBAction func sciensserClick(_ sender: UIButton) {
        check(GameButton.scissor)
    }
    
    @IBAction func paperClick(_ sender: UIButton) {
        check(GameButton.paper)
    }
}

