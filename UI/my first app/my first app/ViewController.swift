//
//  ViewController.swift
//  my first app
//
//  Created by ustadev.uz on 22/01/24.
//

import UIKit

class ViewController: UIViewController {

    private lazy var targetValue:Int = 0
    private lazy var currentValue:Int = 0
    
    @IBOutlet weak var labelValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderValueChange(_ sender: UISlider) {
        currentValue = Int(sender.value * 100)
        print(currentValue)
    }
    
    func setupTitle(){
        targetValue = Int.random(in: 1...100);
        labelValue.text = "You should hit \(targetValue)"
        
    }
    
    @IBAction func checkButton(_ sender: UIButton) {
        let resultValue = abs(targetValue - currentValue)
        var message = ""
        if resultValue == 0 {
            message = "You won"
        }else{
            message = "You couldn't find it. This number is \(targetValue). Yours is \(currentValue). Diff \(resultValue)"
        }
        let alert = UIAlertController(title: "Message", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default){ _ in
            self.setupTitle()
        }
        alert.addAction(action)
        present(alert,animated: true)
    }
}

